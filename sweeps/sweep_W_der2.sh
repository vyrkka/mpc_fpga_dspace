#!/usr/bin/env bash
set -euo pipefail

# Usage: ./sweep_W_der2.sh START END REG_TYPE REG_GAIN
if [[ $# -ne 4 ]]; then
  echo "Usage: $0 START END REG_TYPE REG_GAIN   # sweep W over START..END (inclusive)"
  exit 1
fi

START=$1
END=$2
REG_TYPE=$3
REG_GAIN=$4

# --- fixed params (edit if needed) ---
MODEL="der2"
DATA="der/MIL/der_data2.csv"
NX=7
Q=4        # fixed Q
L=4
M=30
NU=2
# ------------------------------------

if (( START <= END )); then
  SEQ=$(seq "$START" "$END")
else
  SEQ=$(seq "$START" -1 "$END")
fi

for W in $SEQ; do
  echo "Running $MODEL with W=$W Q=$Q, reg_type=$REG_TYPE, reg_gain=$REG_GAIN"
  python create_model_fixed.py -q "$MODEL" "$DATA" "$NX" "$W" "$Q" "$L" "$M" "$NU" --reg_type "$REG_TYPE" --reg_gain "$REG_GAIN"
done