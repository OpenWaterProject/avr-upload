#!/bin/bash

echo "set the fuse bits ..."

sudo avrdude -b 19200 -c usbtiny -p m328p -v -e -U efuse:w:0x05:m -U hfuse:w:0xD6:m -U lfuse:w:0xFF:m


echo "loading firmware ..."

sudo avrdude -b19200 -c usbtiny -p m328p -v -e -U flash:w:./blink.hex -U lock:w:0x0F:m

echo

echo "loading bootloader ..."

sudo avrdude -b19200 -c usbtiny -p m328p -v -e -U flash:w:./optiboot_atmega328.hex -U lock:w:0x0F:m

echo


#echo "loading firmware ..."

#sudo avrdude -b19200 -c usbtiny -p m328p -v -e -U flash:w:./blink.hex -U lock:w:0x0F:m

#echo

echo "done."
