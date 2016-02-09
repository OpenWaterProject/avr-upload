# avr-upload

### Option 1: Blink Test Program

To load a test "blink" program:

> cd blinker

> sudo ./flash_blink_boot_combo.sh

This loads the .ino file [here](https://gist.github.com/dwblair/aa7a5787d788cf92f3b6), which has been combined with an appropriate bootloader into a single .hex file.

If the program loads successfully, it should blink the on board LED on pin 9 at a rate of once per second (on for one second, off for one second, repeat). 

### Option 2: Datalogger Test Program

To load a test "logger" program:

> cd logger

> sudo ./flash_logger_boot_combo.sh

This loads the .ino file [here](https://gist.github.com/dwblair/6e56cbdf66276bebc4ff), which has been combined with an appropriate bootloader into a single .hex file.

If the board starts up successfully, it will first blink quickly 10 times rapidly. (NOTE: in some cases this initial behavior does not seem to appear immediately after programming -- to check, switch the power briefly off and back on after programming).

Then, if an micro SD card is present, and it is possible to write to it, the datalogger will:

- sleep for 8 seconds (no visible activity)
- record a line to the micro SD card
- blink once very briefly (only 20 milliseconds)
- repeat

If the board starts up but no micro SD card is present, the datalogger will simply blink constantly at a rapid rate (200 milliseconds on, 200 milliseconds off), ad infinitum. 



