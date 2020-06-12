#!/usr/bin/env bash

cat ../../d/tre.csv | awk -f ../../src/csv-to-tree.awk > tre.dot
