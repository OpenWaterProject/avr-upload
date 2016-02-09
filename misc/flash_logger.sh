#!/bin/bash

echo "loading bootloader ..."

sudo avrdude -b19200 -c usbtiny -p m328p -v -e -U flash:w:./optiboot_atmega328.hex -U lock:w:0x0F:m

echo


echo "loading firmware ..."

sudo avrdude -b19200 -c usbtiny -p m328p -v -e -D -U flash:w:./logger.hex -U lock:w:0x0F:m

echo

echo "done."
