#!/bin/bash

USER=$1
DATASET=$2

kaggle datasets download -d $USER/$DATASET && \
  echo 'Unzipping...' && \
  unzip -q -o ./$DATASET.zip -d ./data/$DATASET && \
  rm ./$DATASET.zip && \
  echo '🚀 Done!'
