#!/bin/bash
set -e

# install all dependencies
sudo apt-get update
sudo apt-get install build-essential 

virtualenv dask/py-datafusion --python=/usr/bin/python3.10
source dask/py-datafusion/bin/activate

# install binaries
python3 -m pip install --upgrade datafusion

# check
python3
import datafusion as dk
dk.__version__
dk.__git_revision__
quit()

deactivate