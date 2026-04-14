#!/bin/bash

# Check for at least four arguments: L, reg_type, reg_gain, and at least one M value
if [ "$#" -lt 4 ]; then
    echo "Usage: $0 L reg_type reg_gain M1 [M2 M3 ...]"
    exit 1
fi

# Arguments
L=$1
REG_TYPE=$2
REG_GAIN=$3
shift 3 # Shift to access M values

# Remaining arguments are M values
M_values=("$@")

# Base folder
TEMPLATE_FOLDER="motor/trained_dnns/motorA"

# Loop over M values
for M in "${M_values[@]}"; do
    FOLDER_NAME="${TEMPLATE_FOLDER}/motorAL${L}M${M}"
    echo "Creating folder: $FOLDER_NAME"
    mkdir -p "$FOLDER_NAME"

    echo "Running: python create_model_float.py motor/trained_dnns/motorA train_data/motorA.csv 3 $L $M 1 --reg_type $REG_TYPE --reg_gain $REG_GAIN"
    python create_model_float.py motor/trained_dnns/motorA train_data/motorA.csv 3 "$L" "$M" 1 --reg_type "$REG_TYPE" --reg_gain "$REG_GAIN"
done
