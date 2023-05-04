#!/bin/bash
set -e

echo 'upgrading dask...'

source ./dask/py-datafusion/bin/activate

python3 -m pip install --upgrade datafusion > /dev/null
