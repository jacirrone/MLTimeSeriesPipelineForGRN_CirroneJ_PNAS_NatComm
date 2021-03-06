#!/bin/bash

PATH_TO_SCRIPT=$1
SCRIPT_NAME=$2
OUT_FILE=$3
NUM_MODELS=$4

PAR1=$5
VAL1=$6
PAR2=$7
VAL2=$8
PAR3=$9
VAL3=${10}

QSUB_PRIORITY=-1
SEND_SCRIPT="${PATH_TO_SCRIPT}/send_statespace.sh"

QSUB_CMD="$SEND_SCRIPT $SCRIPT_NAME $OUT_FILE $NUM_MODELS $PAR1 $VAL1 $PAR2 $VAL2 $PAR3 $VAL3"
echo "Sending the following command to QSUB: $QSUB_CMD"

#$QSUB_CMD
#qsub $QSUB_CMD
sbatch $QSUB_CMD
