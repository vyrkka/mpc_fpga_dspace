#!/usr/bin/env bash
set -euo pipefail

# Usage: ./sweep_Q_der1.sh START END FR_LEN REG_TYPE REG_GAIN
if [[ $# -ne 5 ]]; then
  echo "Usage: $0 START END FR_LEN REG_TYPE REG_GAIN   # sweep Q over START..END (inclusive), W = Q + FR_LEN"
  exit 1
fi

START=$1
END=$2
FR_LEN=$3
REG_TYPE=$4
REG_GAIN=$5

# integer check for the first three args
re='^-?[0-9]+$'
if ! [[ $START =~ $re && $END =~ $re && $FR_LEN =~ $re ]]; then
  echo "The first three arguments must be integers: START END FR_LEN"
  exit 1
fi

# --- fixed params (edit if needed) ---
MODEL="der/trained_dnns/der1"
DATA="der/MIL/der_data1.csv"
NX=9
L=4
M=30
NU=2
# ------------------------------------

if (( START <= END )); then
  SEQ=$(seq "$START" "$END")
else
  SEQ=$(seq "$START" -1 "$END")
fi

for Q in $SEQ; do
  W=$(( Q + FR_LEN ))
  echo "Running $MODEL with W=$W Q=$Q (fr_len=$FR_LEN), reg_type=$REG_TYPE, reg_gain=$REG_GAIN"
  python create_model_fixed.py -q "$MODEL" "$DATA" "$NX" "$W" "$Q" "$L" "$M" "$NU" --reg_type "$REG_TYPE" --reg_gain "$REG_GAIN"
done
