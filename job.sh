#!/bin/sh

unzip picam-model-azure.zip
cd picam-model-azure
pip install -r requirements.txt
python apply_predictions_with_ray.py -p 8 -b 256 -m "saved_models/1647175692" -c "class_names.npy"
