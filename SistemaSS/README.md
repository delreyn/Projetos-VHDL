# Download VHDL to your Altera DE2 board

In order to download the program to your development board you need to [install](https://www.intel.com/content/www/us/en/programmable/support/support-resources/download/drivers/usb-blaster/dri-usb-blaster-vista.html) the Altera® USB-Blaster, included in ALTERA Quartus® Prime software.
Then follow the steps accordilly to which configuration mode you want to perfom:

- JTAG Programming
	 1. Connect your board the 9V power supply and the USB Cable to the Blaster port of the board (the lefmost);
	 2. Perform the Pin Assignment and compile it;
	 3.   Go to : 	 
	 > Tools > Programmer 
	 
	 4. Select JTAG in Mode box
	 5. Press Hardware Setup and Make sure USB-Baster is selected;
	 6. If there's not an .sof file already listed, then click Add File and add it (usually in output directory of your project)
   7. Flip the RUN/PROG switch into the RUN mode;
   8. Click Start
