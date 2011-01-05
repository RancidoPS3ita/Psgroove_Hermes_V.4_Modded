

all:
	@make -f Makefile.payload
	@make -f .Makefile.psgroove_usbkey
	mv psgroove.hex HEX/AT90USBKEY-at90usb1287.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload 
	@make -f .Makefile.psgroove_maximus
	mv psgroove.hex HEX/MAXIMUS-at90usb162.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload 
	@make -f .Makefile.psgroove_minimus
	mv psgroove.hex HEX/MINIMUS_32-v1-at90usb162.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean

      
	@make -f Makefile.payload 
	@make -f .Makefile.psgroove_teensy1.0
	mv psgroove.hex HEX/TEENSY_1.0-at90usb162.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload 
	@make -f .Makefile.psgroove_teensy2.0
	mv psgroove.hex HEX/TEENSY_2.0-atmega32u4.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean

	@make -f Makefile.payload
	@make -f .Makefile.psgroove_teensy++1.0
	mv psgroove.hex HEX/TEENSY++1.0-at90usb646.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload
	@make -f .Makefile.psgroove_teensy++2.0
	mv psgroove.hex HEX/TEENSY++2.0-at90usb1286.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload
	@make -f .Makefile.psgroove_openkubus
	mv psgroove.hex HEX/OPENKUBUS-atmega16u4.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload
	@make -f .Makefile.psgroove_benito
	mv psgroove.hex HEX/BENITO-at90usb162.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload
	@make -f .Makefile.psgroove_USBTINYMKII
	mv psgroove.hex HEX/USBTINYMKII-at90usb162.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload
	@make -f .Makefile.psgroove_olimex
	mv psgroove.hex HEX/OLIMEX-at90usb162.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload
	@make -f .Makefile.psgroove_xplain
	mv psgroove.hex HEX/XPLAIN-at90usb1287.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean


	@make -f Makefile.payload
	@make -f .Makefile.psgroove_blackcat
	mv psgroove.hex HEX/BLACKCAT-at90usb162.hex
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean

usbkey:
	@make -f Makefile.payload
	@make -f .Makefile.psgroove_usbkey
	mv psgroove.hex HEX/AT90USBKEY-at90usb1287.hex

dfu:

	dfu-programmer at90usb1287 erase
	dfu-programmer at90usb1287 flash --debug 1 HEX/*.hex
	dfu-programmer at90usb1287 reset
	

clean:
	@make -f Makefile.payload clean
	@make -f Makefile.psgroove clean
	rm -R HEX
	mkdir HEX
