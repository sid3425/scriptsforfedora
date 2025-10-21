#!/bin/bash

echo "Installing snapper and dnf plugin"
sudo dnf install -y snapper dnf-plugin-snapper

echo "Creating snapper config"
sudo snapper -c root create-config / && sudo snapper -c home create-config /home

echo "Configuring DNF to use snapper"
sudo tee /etc/dnf/plugins/snapper.conf > /dev/null <<EOF
[main]
autosnap = true
EOF

echo "Enabling systemd timers"
sudo systemctl enable snapper-timeline.timer
sudo systemctl enable snapper-cleanup.timer
sudo systemctl start snapper-timeline.timer
sudo systemctl start snapper-cleanup.timer

echo "Manual check for verifying setup"
sudo snapper -c root ls
sudo snapper -c home ls
