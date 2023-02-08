#!/bin/bash

sudo chmod 777 bin/shellripper;
sudo cp bin/shellripper /usr/bin/shellripper;
sudo cp ../../shellripper /usr/share/shellripper -r;

printf "[BIN-INSTALL] Shellripper successfully added to /bin.\n";
