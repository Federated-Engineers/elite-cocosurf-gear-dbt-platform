#!/bin/sh

echo "Running dbt run for cocosurf-gear"

dbt run \
  --project-dir cocosurf-gear \
  --profiles-dir cocosurf-gear