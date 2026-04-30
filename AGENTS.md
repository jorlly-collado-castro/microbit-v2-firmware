# Agent Workflows & Project Maintenance Guidelines

This document tracks how autonomous agents interact with the `microbit-v2-firmware` crate and details the standards required for commits, tool usage, and issue tracking.

## Commits & Source Control

All agents working on this project must adhere strictly to **Atomic Commits**.

*   **Atomic Commits**: One commit per logical unit of work. For example, adding the I2C driver is one commit; modifying the build file to include FPU support is another.
*   **Commit Message Convention**: 
    Commits should use standard conventional prefixes:
    *   `feat: <Description>` for new HAL modules or drivers.
    *   `fix: <Description>` for bug fixes in memory/register mapping.
    *   `docs: <Description>` for updating this markdown file, SVD docs, or inline Ada code.
    *   `chore: <Description>` for Alire toolchain/crate maintenance.

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
