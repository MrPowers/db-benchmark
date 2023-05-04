#!/bin/bash
set -e

source ./datafusion/py-datafusion/bin/activate
python3 -c 'import datafusion as dk; open("datafusion/VERSION","w").write(dk.__version__); open("datafusion/REVISION","w").write(dk.__git_revision__);' > /dev/null
