#!/usr/bin/env sh
set -eu

# Guardrail for pre-clearance public copy.
# Scans only served/static site files, not internal regulatory artifacts.

served_files=""

if [ -f "sonohl.html" ]; then
  served_files="$served_files sonohl.html"
fi

if [ -f "index.html" ]; then
  served_files="$served_files index.html"
fi

if [ -z "$served_files" ]; then
  echo "No served site files found to scan."
  exit 0
fi

pattern='intended to assist|indications for use|intended use|assistive analysis|sole means of diagnosis|decision support to the clinician|diagnostic-quality output|physician over-read'

if grep -Eiq "$pattern" $served_files; then
  echo "Guardrail failed: pre-clearance intended-use language found in served site files."
  grep -Ein "$pattern" $served_files
  exit 1
fi

echo "Guardrail passed: no staged intended-use phrases found in served site files."
