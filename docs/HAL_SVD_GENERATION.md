# SVD Generation Guide

This file documents the process for obtaining the canonical `nrf52833.svd` file and generating the base Ada bindings for the lowest-level registers.

## Sourcing the SVD File
The canonical source for the Nordic nRF52833 SVD file is the official [CMSIS device family packs](https://www.keil.arm.com/packs/nrf_devicefamilypack-nordicsemiconductor/versions/) or Nordic's nRF MDK download [from their website](https://www.nordicsemi.com/Products/Development-tools/nRF-MDK/Download). 

To grab it without extracting large .pack files, it can also be retrieved from community-mirrored repos, such as the Rust `nrf-rs/nrf-pacs` repository:
```bash
curl -o docs/nrf52833.svd https://raw.githubusercontent.com/nrf-rs/nrf-pacs/master/svds/nrf52833.svd
```

## Generating Ada Bindings

We use `svd2ada` to map the raw SVD XML into Ada record types with proper memory-mapped `pragma Volatile` and `pragma Import`.

**Prerequisites:**
You need `svd2ada` in your path. This can be obtained via Alire:
```bash
alr get svd2ada
cd svd2ada*
alr build
export PATH=$(pwd)/bin:$PATH
```

**Generation Command:**
To generate the bindings from the root of this project:

```bash
svd2ada docs/nrf52833.svd -p NRF52833_SVD -o src/svd/ --base-types-package NRF52833_SVD
```

This generates `NRF52833_SVD.*` packages inside `src/svd/` with pure bit-accurate representation of the nRF52833 MCU hardware blocks.
