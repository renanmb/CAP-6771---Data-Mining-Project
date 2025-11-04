#!/bin/bash

# Install uv
# curl -LsSf https://astral.sh/uv/install.sh | sh

# Create an R project folder
# mkdir website

# Initialize the R project with renv
Rscript -e "setwd('/website')"
Rscript -e "renv::init()"

# Write the renv settings to ~/.Rprofile
echo "Sys.setenv(RENV_PATHS_CACHE = '/website/renv/cache')" > ~/.Rprofile
echo "renv::load(project = '/website')" >> ~/.Rprofile

# Install reticulate
Rscript -e 'install.packages("reticulate")'

# Create a uv virtual environment .venv
# uv venv

# Activate the environment and install desired packages
source .venv/bin/activate
# uv pip install numpy
uv add numpy

# Get the path to the Python interpreter and tell renv to use it
PYTHON_PATH=$(which python)
Rscript -e "renv::use_python('$PYTHON_PATH')"