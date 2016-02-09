# avr-upload

sudo apt-get install avrdude

sanity check:

sudo avrdude -c usbtiny -p m328p

following code here: https://learn.sparkfun.com/tutorials/installing-an-arduino-bootloader

sudo avrdude -b 19200 -c usbtiny -p m328p -v -e -U efuse:w:0x05:m -U hfuse:w:0xD6:m -U lfuse:w:0xFF:m

sudo avrdude -b19200 -c usbtiny -p m328p -v -e -U flash:w:hexfilename.hex -U lock:w:0x0F:m
