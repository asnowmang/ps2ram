# PS2RAM
PS2RAM monitors Samba for disk activity and reads the disc image to memory. This isn't a dedicated RAMdisk, it just loads the file into your pagefile. If something else on the server needs the memory it will get dumped.

## Installation
Edit ps2ram and change DIR to point to your PS2 folder. Specifically "PS2", not "PS2/DVD" or "PS2/CD".
```# make```
