# upack
upack is an [open-source](https://github.com/buhron/upack/#) package manager designed for Linux distributions including Debian, Arch Linux, ChromeOS, and more!
## Installers and source code          
Installers and source code are currently only available in the beta branch.
## Installation (and removal)
You will need to run this following command in a terminal session, replacing **arch** with your actual architecture (run `uname -m`):

```bash
curl https://buhron.github.io/upack/installers/**arch**/install.sh | sudo -s
```

**Note**: upack and the packages installed using crospack will (by default) be stored at `/opt/upack/` if script above is used (or whatever `$UPACK_PREFIX` is set to).

​​
If you want to remove upack, simply open a command line and run: `upack remove upack`. This will remove all packages installed with upack.

## Help
Crospack has a docs site at [here](https://buhron.github.io/upack/doc/welcome/). You can also ask in the Issues tab for help.<br>

## Contributions
Anyone can contribute to this project! As long as your contribution makes sense and is mindful, I will accept your PR/Feature Request!
