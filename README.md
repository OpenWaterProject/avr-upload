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

If the board starts up successfully, it will first blink 3 times at a rate of one second ON, one second off. 

If an micro SD card is present, and it is possible to write to it, the datalogger will:

- sleep for 8 seconds (no visible activity)
- record a line to the micro SD card
- blink once very briefly (only 20 milliseconds)
- repeat

**Failure modes**

If the board starts up but no micro SD card is present, or it is not possible to write to it, the datalogger will simply blink constantly at a rapid rate (200 milliseconds on, 200 milliseconds off), ad infinitum. 

If the board starts up and it cannot access the onboard RTC, it will also blink constantly at a rapid rate (200 milliseconds on, 200 milliseconds off), ad infinitum.

### Creating a new combined program + bootloader hex file

> cd combining_boot_and_program

> ./combine.sh 

which will produce an out.hex file. 

You can edit the combine.sh file to reflect your own bootloader and program hex file names. 



