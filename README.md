## Archived repository. Please read the [profile README](https://github.com/sid3425/sid3425/blob/main/README.md) as to why. Here is the [new repository for this project](https://codeberg.org/sid3425/scriptsforfedora)

This repository includes some small Bash scripts that I made from when I daily-drove Fedora Workstation. Currently this repo contains only 2 of these, one to setup ADB with the required udev rules to, say, install custom ROMs through a web installer(like in the case of installing ROMs like GrapheneOS or reverting to the stock ROMs on devices like Google Pixels); and the other to setup Snapper to setup automated BTRFS snapshots on a new install of Fedora Workstation. I may add in more scripts if I move back to Fedora at some point.

**Note:** These scripts will work just fine on Fedora Workstation or a Workstation spin or a fork like Nobara, however they will MAY NOT work as intended on a Distrobox/Podman/Docker/WSL container and DEFINITELY NOT ON FEDORA ATOMIC. Also, if they in any way cause your system to act weird or cause something like an alien invasion somehow, I will not be responsible at all.
 
### Steps to use these scripts

1. Clone this repo through `git clone https://github.com/sid3425/scriptsforfedora/`.
2. Open your terminal and navigate to the `scriptsforfedora` folder.
3. Setup the scripts to be executable with `chmod +x <script name>` or by right clicking on the files themselves if using a GUI, going into the properties section and marking the files as executable.
4. Now run `./adb-fedora.sh` or `./snapper-fedora.sh` and enter your password. I'd recommend rebooting your system to load the rules and services correctly. You now have ADB and Snapper setup properly on Fedora!
