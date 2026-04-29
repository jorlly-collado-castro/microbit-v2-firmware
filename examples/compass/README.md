# Compass Example

This example demonstrates how to read and calibrate the LSM303AGR magnetometer on the micro:bit v2 to compute a 2D heading pointing to Magnetic North.

## Calibration Phase
When the application starts, you have **10 seconds** to rotate the micro:bit smoothly in a flat, horizontal circle. The software will monitor the minimum and maximum magnetic field strengths on the X and Y axes to calculate the "hard iron" offsets specific to your environment.

## How to use
1. Build the example using `alr build` or via the containerized workflow.
2. Flash the generated `bin/compass.hex` to your micro:bit v2.
3. Open a serial terminal at `115200` baud.
4. Follow the prompt to rotate the board for 10 seconds.
5. After calibration, it will print your heading in degrees (0-360) where 0 is North, 90 is East, 180 is South, and 270 is West.