# Micro:bit v2 Ada Firmware Examples

This directory contains example applications demonstrating how to use the `microbit_v2` Ada HAL crate.

## Available Examples

*   **Blinky** (`examples/blinky/`): Blinks a single LED on the matrix.
*   **Console** (`examples/console/`): Echoes UART characters in a loop using `Microbit.Console`.
*   **Display** (`examples/display/`): Shows a moving pixel on the LED matrix using the background Ravenscar task.
*   **Sensors** (`examples/sensors/`): Reads the LSM303AGR accelerometer and magnetometer via I2C and prints values to the console.
*   **Compass** (`examples/compass/`): Computes 2D heading (0-360 degrees) after a 10-second hard-iron calibration routine.
*   **Audio** (`examples/audio/`): Plays a scale of musical notes using the PWM module.
*   **Wav_Player** (`examples/wav_player/`): Plays a raw PCM audio clip over the onboard speaker with in-place scaling.
*   **Parrot** (`examples/parrot/`): Records audio via the analog microphone (SAADC) into a buffer and plays it back when the 'A' button is pressed.
*   **Sound_Meter** (`examples/sound_meter/`): Displays real-time audio volume (SPL) as a bar graph on the LED matrix using Ravenscar multitasking.
*   **Logo_Touch** (`examples/logo_touch/`): Interactive LED animation that responds to touching the capacitive logo pad, demonstrating GPIOTE and PPI interaction.

## 1. Building the Examples

The examples can be built natively or securely using Docker. Using Docker is the recommended cross-platform method, as it completely eliminates the need to manually install Alire (the Ada package manager) and the ARM compiler toolchains on your host machine.

### Method A: Building via Docker (Recommended)

1. Make sure you have Docker and Docker Compose installed.
2. From this `examples/` directory, simply run:
   ```bash
   docker compose up
   ```
   *Note: The very first time you run this, it will take a few minutes for Alire to download the GNAT ARM cross-compiler. Subsequent builds will be cached and near-instant.*

3. The compiled `.hex` file will appear locally at `examples/blinky/bin/blinky.hex`.

### Method B: Building Natively

If you prefer building locally, you'll need Alire installed, plus the ARM binutils to generate the final `.hex` file for flashing.

**1. Install System Dependencies (for HEX generation)**
* **Arch Linux:** `sudo pacman -S arm-none-eabi-binutils`
* **Ubuntu/Debian:** `sudo apt install binutils-arm-none-eabi`
* **macOS:** `brew install arm-none-eabi-binutils` (or the `arm-none-eabi-gcc` cask)

**2. Compile the Project**
Navigate into an example directory (e.g., `blinky`) and run:
```bash
cd blinky
alr build
```

**3. Generate the HEX File**
Convert the resulting ELF executable (`bin/blinky`) into an Intel HEX file (`bin/blinky.hex`):
```bash
arm-none-eabi-objcopy -O ihex bin/blinky bin/blinky.hex
```

---

## 2. Flashing the Firmware

The micro:bit v2 has an onboard CMSIS-DAP debugger that automatically mounts as a USB mass storage device named `MICROBIT`. Simply dragging and dropping the compiled `.hex` file onto this drive flashes the firmware.

Once you have your `blinky.hex` file (from Docker or Native compilation), connect your micro:bit v2 via USB:

* **Arch Linux & systemd Linux:**
  Copy the file to the auto-mounted directory:
  ```bash
  cp blinky/bin/blinky.hex /run/media/$USER/MICROBIT/
  ```
* **Ubuntu / Debian:**
  ```bash
  cp blinky/bin/blinky.hex /media/$USER/MICROBIT/
  ```
* **macOS:**
  ```bash
  cp blinky/bin/blinky.hex /Volumes/MICROBIT/
  ```
* **Windows:**
  Locate the `MICROBIT` drive in Windows Explorer and drag-and-drop the `blinky.hex` file into it.

The yellow LED on the back of the micro:bit will flash rapidly. The device will automatically reset and run your new firmware.

---

## 3. Serial Console & Debugging

The `microbit_v2` HAL configures the UART serial console to operate at a baud rate of **115200**. You can connect to it via USB to see standard output and debugging information.

### Arch Linux / Ubuntu / Debian

1. **Install a terminal emulator:** We recommend `picocom`.
   * *Arch Linux:* `sudo pacman -S picocom`
   * *Ubuntu/Debian:* `sudo apt install picocom`
2. **Fix Permissions:** Ensure your user has permission to access serial ports without `sudo`.
   * *Arch Linux:* `sudo usermod -aG uucp $USER`
   * *Ubuntu/Debian:* `sudo usermod -aG dialout $USER`
   *(Note: You will need to log out and log back in for group changes to take effect).*
3. **Connect:**
   ```bash
   picocom -b 115200 /dev/ttyACM0
   ```
   *(To exit picocom, press `Ctrl+A` then `Ctrl+X`)*

### macOS

1. The device will typically show up as `/dev/tty.usbmodemXXXX`.
2. Connect using the built-in `screen` utility:
   ```bash
   screen /dev/tty.usbmodem14102 115200
   ```
   *(To exit screen, press `Ctrl+A` then `K`)*

### Windows

1. Open **Device Manager** and expand the "Ports (COM & LPT)" section.
2. Note the COM port number for the "mbed Serial Port" (e.g., `COM3`).
3. Download and open [PuTTY](https://www.putty.org/) or Tera Term.
4. Select **Serial** connection type, enter your COM port (e.g., `COM3`), and set the Speed (Baud) to `115200`. Click Open.