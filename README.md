# upack
upack is an [open-source](https://github.com/buhron/upack/#) package manager designed for Linux distributions including Debian, Arch Linux, ChromeOS, and more!
## Installers and source code          
Installers and source code are currently only available in the beta branch.
## Installation (and removal)

### Installation
You will need to run this following command in a terminal session:
```bash
curl https://buhron.github.io/crospack/installers/**arch**/install.sh | sudo -s
```

**Note**: upack and the packages installed using crospack will (by default) be stored at `/opt/upack/` if script above is used.<br>

​​​### Removal
If you want to remove crospack, simply open a command line and run: `upack remove upack` (You may need root previleges based on where you installed crospack, if you installed crospack normally via the command above, you can safely run this command as the script had `chown`ed the installation directory.)

## Help
Crospack has a docs site at [here](https://buhron.github.io/upack/doc/welcome/). You can also ask in the Issues tab for help.<br>

## Contributions
Anyone can contribute to this project! As long as your contribution makes sense and is mindful, I will accept your PR/Feature Request!
