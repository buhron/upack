# crospack
Crospack is an [open-source](https://github.com/buhron/crospack/#) package manager designed for ChromeOS (but can be installed on Linux and macOS via script modifications or manual installation).
## Installers and source code          
Installers and source code are currently only available in the beta branch.
## Installation (and removal)
**Installation**<br>
To install crospack, first enable Developer Mode on your Chromebook ([tutorial](https://www.chromium.org/chromium-os/developer-library/guides/device/developer-mode/)) (if you are using one)
* Go to VT-2 (Ctrl+Alt+Forward (where F2 would be)) (or terminal on Linux/macOS), login as `chronos` (if you are using VT-2) and enter your developer password, and type:
(Replace 'arch' with your CPU architecture (run `uname -m` in the shell to see))
```bash
curl https://buhron.github.io/crospack/installers/arch/install.sh | sudo bash
```
Crospack and the packages installed using crospack will be stored at `/opt/crospack/` if script above is used.<br>

**Manual Installation (custom)**<br>
* Get installation archive: Zip archives of crospack will be available in Releases if you want to install crospack to another folder (ex. `/home/chronos/user/.crospack`)
* Note: Remember that when installing crospack, you will need to set the `$CROSPACK_ROOT`, `$PATH`, and `$LD_LIBRARY_PATH` environment variables to or else crospack won't work.​​​
​​​​​ 
  <br>
​​​
**Removal**<br>
If you want to remove crospack, simply open a command line and run: `rm -rf $CROSPACK_ROOT` (You may need root previleges based on where you installed crospack, if you installed crospack normally via the command above, you can safely run this command as the script had `chown`ed the installation directory so user can install via crosh.

## Help
Crospack has a docs site at [here](https://buhron.github.io/crospack/doc/welcome/). You can also ask in the Issues tab for help.<br>

## Contributions
Anyone can contribute to this project! As long as your contribution makes sense and is mindful, I will accept your PR/Feature Request!
