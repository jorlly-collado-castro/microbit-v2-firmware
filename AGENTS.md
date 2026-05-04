# Agent Workflows & Project Maintenance Guidelines

This document tracks how autonomous agents interact with the `microbit-v2-firmware` crate and details the standards required for commits, tool usage, and issue tracking.

## Commits & Source Control

**CRITICAL RULE: DO NOT take any git actions (commit, push, merge, branching, etc.) or close GitHub issues unless explicitly requested by the user.** Agents must provide the implementation, wait for the user to test and verify on hardware, and only commit when explicitly instructed to do so.

All agents working on this project must adhere strictly to **Atomic Commits**.

*   **Atomic Commits**: One commit per logical unit of work. For example, adding the I2C driver is one commit; modifying the build file to include FPU support is another.
*   **Conventional Commits Specification**:
    The Conventional Commits Specification is a lightweight convention on top of commit messages which provides an easy set of rules for creating an explicit commit history, making it easier to write automated tools on top of your codebase. This convention agrees with Semantic Versioning, by describing the *features*, *fixes*, and *breaking changes* made in those commits.

    According to this specification, a commit message should be structured as follows:
    ```text
    <type>[optional scope]: <description>

    [optional body]

    [optional footer(s)]
    ```

    **The Commit `<type>` Prefix**
    Every commit message should be prefixed with a term that describes in one word the type of change involved in a commit. These prefixes can be one of the types below:
    - `feat:` a new feature is introduced with the changes
    - `fix:` a bug fix has occurred
    - `chore:` changes that do not relate to a fix or feature and don't modify src or test files (for example updating dependencies)
    - `refactor:` refactored code that neither fixes a bug nor adds a feature
    - `docs:` updates to documentation such as a the README or other markdown files
    - `style:` changes that do not affect the meaning of the code, likely related to code formatting such as white-space, missing semi-colons, and so on.
    - `test:` including new or correcting previous tests
    - `perf:` performance improvements
    - `ci:` continuous integration related
    - `build:` changes that affect the build system or external dependencies
    - `revert:` reverts a previous commit

    **The Commit Description**
    Following the commit type, the description is a short subject line written in *all lowercase* with a character limit to encourage concise, succinct descriptions.

    **The Commit Body**
    The commit body can contain a more detailed explanation about the commit. We can include these details as Markdown as well.

    **The Commit Footers**
    The footers may contain further details about a commit, including external links, Issue# Refs, or Author details, etc. In addition to these details, a commit footer can have an optional type called `BREAKING CHANGE:` which is same as `!` after the *type(scope):* commit prefix (e.g. `fix!:`), indicating a breaking change. A `BREAKING_CHANGE` can be part of commits of any type.

## Documentation Guidelines

Agents **MUST** always update relevant documentation before committing meaningful code changes. This ensures the project remains continuously documented in sync with the codebase.

*   **Update Examples README**: Whenever a new example is added or modified, update `examples/README.md` to reflect the new functionality.
*   **Update Root README**: Keep the root `README.md` (if it exists) updated with the current state of the project, including newly supported hardware peripherals.
*   **Update API Comments**: When creating or modifying HAL specifications (`.ads`), add or update SPARK contracts and explanatory comments.
*   **Track State**: Leave clear traces of the current state of features, either in READMEs, or by creating/updating GitHub Issues when a task is partially completed or scoped for future work.

## Build System (`alr`) Usage

Agents should prefer using `alr` for building and managing dependencies in order to remain aligned with standard Ada packaging.

*   To retrieve packages, use `alr get <pkg>`.
*   To compile, use `alr build`.
*   To test or check for warnings, rely on `alr build` with the `Compiler` switches in the `.gpr` file.

Do **NOT** use `gnatmake` manually unless strictly required outside the Alire context. The light tasking runtime, toolchain, and SVD generation are all heavily dependent on the GNAT `arm-eabi` cross compiler that Alire configures.

## SVD & Hardware Registers

Agents modifying low-level hardware functionality **must** reference `/docs/HAL_SVD_GENERATION.md`. Manual definition of memory mapped registers is allowed only for registers that are incorrect or entirely missing from the auto-generated SVD packages. If a bug is found in an auto-generated definition, an overriding module should be constructed using a new Ada package extending the SVD definition, rather than manually overwriting the auto-generated `.ads` files.

## Examples & Containerized Build

*   **Mandatory Examples**: Whenever an agent implements a new feature or HAL driver (e.g., I2C, Display, Sensors), it **MUST** create a standalone example application in the `examples/` directory demonstrating its usage.
*   **Docker Integration**: Agents **MUST** integrate every new example into the `examples/docker-compose.yml` build script. The Docker setup automatically runs `alr --non-interactive build` and generates the flashable `.hex` files (via `arm-none-eabi-objcopy`) for all examples.
*   **Containerized Workflow**: Agents and users should utilize the containerized setup (`docker compose up` or `podman-compose up` inside the `examples/` directory) for building examples. This ensures cross-platform compatibility, avoids host toolchain pollution, and provides fast, reproducible builds via a cached Alire environment.

## Reference Implementations & External Sources

*   **Local First**: When an agent gets stuck, needs to understand hardware behavior, or requires implementation details, it **MUST** consult the local reference repositories stored in `docs/reference_implementations/` (e.g., `codal-core`, `codal-nrf52`, `microbit-v2-hardware`) using search tools like `grep`, `find`, or the bash shell. 
*   **Avoid Redundant Fetching**: Do not use commands like `curl` or `wget` to query external GitHub repositories if the information can be found in the local reference directories. This ensures faster searches and provides better codebase context.
*   **Caching New Sources**: If an agent needs to reference a new external source (such as a new C++ library or schematic repository) that is not currently present, the agent **MUST** clone or download that new source into the `docs/reference_implementations/` directory so it is available for future use.

## Formal Verification (SPARK 2014)

The project enforces `pragma SPARK_Mode (On)` globally via `gnat.adc`. Absence of Runtime Errors (AoRTE) must be mathematically proven at level 4 (`gnatprove --level=4 -j0`). Agents must follow these strict SPARK guidelines:

*   **Volatile Contexts**: SPARK heavily restricts volatile function calls (e.g., hardware register reads or `Ada.Real_Time.Clock`) within expressions or interacting contexts (raising `E0004`). 
    *   **Rule**: Decouple volatile reads into strictly separated local declarations before using them in logic, conditionals, or loop parameters.
    *   *Good*: `declare Now : constant Time := Clock; begin delay until Now + Milliseconds (50); end;`
    *   *Bad*: `delay until Clock + Milliseconds (50);` or `if Clock > Target then...`
*   **Integer Overflow & Two's Complement**: Negating the lowest bound of a signed integer (e.g., `-32768` for `Integer_16`) causes an overflow because the maximum positive value is `32767`.
    *   **Rule**: Use saturated negation or explicitly constrained types when converting raw hardware data or mapping axes. (e.g., `(if Val = Integer_16'First then Integer_16'Last else -Val)`).
*   **Loop Variants & Termination**: The prover needs help terminating loops that rely on external state. Always provide loop invariants (`pragma Loop_Invariant`) and loop variants (`pragma Loop_Variant`), or ensure the prover can statically deduce termination constraints.
*   **Floating-Point Bounds**: SPARK requires mathematically proven bounds for all floating-point arithmetic. Unbounded external inputs (like raw magnetometer floats) can cause "float overflow check might fail" warnings. Constrain them using subtypes or explicit clamping where safety is critical.

## Ada 2022 Standards Compliance & Best Practices

This codebase targets the latest Ada 2022 standard (`-gnat2022`). Agents must write modern, idiomatic Ada, preferring new constructs over legacy Ada 95/2012 paradigms:

*   **Target Name Symbol (`@`)**: Use the `@` symbol for accumulator/update assignments to reduce verbosity and duplication.
    *   *Good*: `Sum := @ + Value;`
    *   *Bad*: `Sum := Sum + Value;`
*   **Square Brackets for Arrays**: Use bracket syntax for array aggregates to clearly differentiate them from function calls.
    *   *Good*: `Data : array (1 .. 3) of Integer := [1, 2, 3];`
    *   *Bad*: `Data : array (1 .. 3) of Integer := (1, 2, 3);`
*   **Expression Functions**: For simple getters or concise logic, use expression functions instead of full bodies.
    *   *Good*: `function Is_Ready return Boolean is (Status = 1);`
*   **Declare Blocks in Loop Bodies**: Heavily utilize local `declare` blocks to cleanly scope temporary variables, especially for grabbing `Clock` values before `delay until` calls.
*   **Hardware Coordinate Systems**: Remember that raw IC axes rarely match the physical board's logical axes. Always explicitly document and implement coordinate mappings (e.g., ENU, North-East-Down, Simple Cartesian) rather than blindly assigning `X = Raw_X`. Use `docs/reference_implementations/` to reverse-engineer standard transformations.
