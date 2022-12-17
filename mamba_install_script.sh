#!/usr/bin/env bash

CONDA_ENV_NAME="rv-dev"

eval "$(conda shell.bash hook)"
conda activate

mamba env update -f environment.yml --prune --name ${CONDA_ENV_NAME}

conda activate ${CONDA_ENV_NAME}



pip install --no-deps -e ./rastervision_pipeline
pip install --no-deps -e ./rastervision_aws_s3
pip install --no-deps -e ./rastervision_aws_batch
pip install --no-deps -e ./rastervision_core
pip install --no-deps -e ./rastervision_pytorch_learner
pip install --no-deps -e ./rastervision_pytorch_backend
pip install --no-deps -e ./rastervision_gdal_vsi
pip install --no-deps -e .  # install git checkout of current directory in editable mode
