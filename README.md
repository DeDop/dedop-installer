# dedop-installer

## Back-end installer

### Building the installer

Install `constructor` in your root Miniconda:

    source activate
    conda install constructor


Build Anaconda installer `dedop` (see `installer/construct.yaml`):

    cd dedop-conda
    constructor installer
    
## Front-end installer

* Install [nodejs 6](https://nodejs.org/en/download/) (higher version may work, but not yet tested)
* `git clone https://github.com/DeDop/dedop-studio.git`
* `cd dedop-studio`
* `npm run dist`
