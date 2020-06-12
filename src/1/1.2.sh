#!/usr/bin/env bash

jq -r ".friends[]|{name, id:.id, know:.knows[], like:.music[]}|[.know, .name, .id]|@csv" ../../d/friends.json  | sort -t, -u -k1,2 | awk -f csv-to-tree_toplay.awk > tre.dot
dot -Tjpeg tre.dot -o tre.jpeg && eog --fullscreen tre.jpeg
