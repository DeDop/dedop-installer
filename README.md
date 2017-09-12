# dedop-installer

## Install DeDop with installer

IMPORTANT: Install DeDop-core before installing DeDop-studio

### Install DeDop-core

For Windows:
* Download installer file **DeDop-core-1.1.0-Windows-x86_64.exe**
* Execute the installer

For Linux/MacOS
* Download installer file **DeDop-core-1.1.0-Linux-x86_64.sh** or **DeDop-core-1.1.0-MacOSX-x86_64.sh**
* `chmod +x DeDop-core-1.1.0-[MacOSX|Linux]-x86_64.sh`
* `./DeDop-core-1.1.0-[MacOSX|Linux]-x86_64.sh`

### Install DeDop-studio

For Windows:
* Download installer file **DeDop-studio-1.1.0-win.exe**
* Execute the installer

For Linux:
* with AppImage file
  * Download AppImage file **DeDop-studio-1.1.0-x86_64.AppImage**
  * `chmod +x DeDop-studio-1.1.0-x86_64.AppImage`
  * Run the AppImage file
* with tar.gz file
  * Download tar.gz file **DeDop-studio-1.1.0.tar.gz**
  * `tar -xzf DeDop-studio-1.1.0.tar.gz`
  * `./DeDop-studio-1.1.0/dedop-studio`
* with zip file
  * Download zip file **DeDop-studio-1.1.0.zip**
  * `unzip DeDop-studio-1.1.0.zip`
  * `./linux-unpacked/dedop-studio`

For Mac:
* with dmg file
  * Download dmg file **DeDop-studio-1.1.0.dmg**
  * Run the dmg file
* with zip file
  * Download zip file **DeDop-studio-1.1.0-mac.zip**
  * `unzip DeDop-studio-1.1.0-mac.zip -d dedop-studio`
  * `cd dedop-studio && open DeDop-studio.app`

## Build DeDop-core installer

Install `constructor` in your root Miniconda:

    source activate
    conda install constructor


Build Anaconda installer `dedop` (see `installer/construct.yaml`):

    cd dedop-conda
    constructor installer
    
## Build front-end installer

* Install [nodejs 6](https://nodejs.org/en/download/) (higher version may work, but not yet tested)
* `git clone https://github.com/DeDop/dedop-studio.git`
* `cd dedop-studio`
* `npm run dist`

