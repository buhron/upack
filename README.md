# crospack
Crospack is an package manager for ChromeOS (but can be installed on Linux and macOS via some script modifications).
## Installation (and removal)
**Installation**<br>
To install crospack, go to VT-2 (Ctrl+Alt+Forward(F2)) and type:
(This doesn't work yet)
```sh
sudo bash <(curl -L https://github.com/buhron/crospack/raw/refs/heads/beta/installers/install-x86_64.sh)
```

Crospack and the packages installed using crospack will be stored at `/usr/share/crospack/` <br>

**Manual Installation (custom)**<br>
* Get installation archive: Zip archives of crospack will be available in Releases if you want to install crospack to another folder (ex. `/home/chronos/user/.crospack`)
* Note: Remember that when installing crospack, you will need to set the $CROSPACK_ROOT, $PATH, and $LD_LIBRARY_PATH environment variables to or else crospack won't work.<br>
**Removal**
<br>
If you want to remove crospack, simply open a command line and run: `rm -rf $CROSPACK_ROOT` (You may need root previleges based on where you installed crospack, if you installed crospack normally via the command above, you can safely run this command as the script had `chown`ed the installation directory so user can install via crosh.

## Help
```
USAGE: crospack [OPTIONS] [FLAGS]/[FILTER]
OPTIONS:
crospack update - get all package info and put from Release file (name, version, etc.)
crospack install [PACKAGE/ZIP FILE] [FLAGS] - install package(s) either from package repo(s) or zip archive
crospack upgrade [FLAGS] - upgrade package(s) from package repo(s)
crospack config [FLAGS] - configure crospack settings located in $CROSPACK_ROOT/etc/crospack
crospack download  [FLAGS] - download zip archive of package
crospack list [FILTER] - list all packages 
FLAGS:
--cli, -c - use cli to configure crospack settings (OPTIONS supported: config)
--install-bare - Install bare package without installing dependencies (unrecommended) (OPTIONS supported: install)
--download-deps, -dd - Download needed dependencies as well with package (OPTIONS supported: download)
--path, -p - Install package into specified path other then $CROSPACK_ROOT (OPTIONS supported: install)
--allow-all-zip - Allow any zip archive to be installed regardless if unverified from repo (OPTIONS supported: config)
--package - Only update specified package (OPTIONS supported: upgrade)
FILTERS:
installed - list all installed packages
need2update - list all packages that have a update pending
unknownauthor - list all packages with an unknown author
installedfromzip - list all packages that was installed from a zip archive
installedfromaddedrepo - list all packages that was installed from a repo other then the default one
repos - list all repos that crospack uses to install and update packages
deps - list all installed packages that are dependencies from another package
```
