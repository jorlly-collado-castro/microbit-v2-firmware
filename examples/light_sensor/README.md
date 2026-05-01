# Light Sensor Example

This example demonstrates how to use the LED matrix on the BBC micro:bit v2 as an ambient light sensor.
It works by temporarily pausing the display refresh, reverse-biasing the LEDs, and measuring how fast their capacitance discharges via the photocurrent.

It prints the ambient light level (0-255 scale) to the serial console over UART every 1 second.

## How to use

1. Build the example using `alr build` or via the containerized workflow in `../`.
2. Flash the generated `bin/light_sensor.hex` to your micro:bit v2.
3. Open a serial terminal at `115200` baud (e.g. `picocom -b 115200 /dev/ttyACM0`).
4. You should see the `Starting Micro:bit v2 LED Matrix Light Sensor...` message, followed by the light level data updating.
5. Try covering the LED matrix with your hand (dark) or shining a flashlight on it (bright) to see the values change.
