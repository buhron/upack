# uPack
uPack is an [open-source](https://github.com/buhron/upack/#) package manager written in Rust designed for Linux distributions including Debian, Arch Linux, ChromeOS, and more!
## Installers and source code          
Installers and source code are currently only available in the beta branch.
## Installation (and removal)
You will need to run this following command in a terminal session:

```bash
curl -# https://buhron.github.io/upack/installlers/install.sh | sudo /bin/bash
```

**Note**: upack and the packages installed using upack will (by default) be stored at `/opt/upack/` if script above is used (or whatever `$UPACK_PREFIX` is set to).
<br/><br>
​​
If you want to remove upack, simply open a command line and run: `upack remove upack`. This will remove all packages installed with upack.
## Build fron source (WIP)
**Note**: Building upack from source will install upack to `/usr` and may cause conflicts with existing packages on your system. Use at your own risk.
<br/><br>
This section is for people who don't want to run a single command just to run uPack. Here are build directions:
```sh
git clone https://github.com/buhron/upack
cd upack
cargo build
cargo install
```
## Help
uPack has a wiki at [here](https://github.com/buhron/upack/wiki). You can also ask in the Issues tab for help.<br>
