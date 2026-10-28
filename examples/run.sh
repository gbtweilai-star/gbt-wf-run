#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_wf_run info
PYTHONPATH=src python -m gbt_wf_run check --payload '{"name": "<在此填写>"}'
PYTHONPATH=src python -m gbt_wf_run run   --payload '{"name": "<在此填写>"}'
