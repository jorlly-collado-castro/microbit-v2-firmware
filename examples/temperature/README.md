# Sensors Example

This example demonstrates how to use the I2C peripheral (TWIM0) to read the internal LSM303AGR accelerometer on the BBC micro:bit v2.

It prints the X, Y, and Z acceleration values to the serial console over UART every 500ms.

## How to use

1. Build the example using `alr build` or via the containerized workflow in `../`.
2. Flash the generated `bin/sensors.hex` to your micro:bit v2.
3. Open a serial terminal at `115200` baud (e.g. `picocom -b 115200 /dev/ttyACM0`).
4. You should see the `Sensors Example Started` message, followed by the acceleration data updating.
