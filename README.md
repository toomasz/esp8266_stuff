
esptool.py - Esptool with fixed 'Failed to leave flash mode' problem, however this is just a simple fix and i dont know why it works.

It also has built in code for auto resetting module after uploading firmware part so no need for manual reset anymore. 
Just connect your esp8266 RST to RTS, and GPIO0 to DTR.

