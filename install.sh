#!/usr/bin/env bash
mkdir /home/monochrome/.config/kmonad
mv config.kbd config-mkb.kbd /home/monochrome/.config/kmonad
sudo mv kmonad.service kmonad-mkb.service /usr/lib/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable kmonad.service
sudo systemctl enable kmonad-mkb.service
sudo systemctl start kmonad.service
sudo systemctl start kmonad-mkb.service
cd ..
rm -rf Kmonad_config


