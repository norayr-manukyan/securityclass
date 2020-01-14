#!/bin/bash
OUT=$(mktemp /tmp/output.XXXXXXXXXX) || { echo "Failed to create temp file"; exit 1; }
awk -F: '{print $7}' /etc/passwd >> $OUT
grep -c $1  $OUT
