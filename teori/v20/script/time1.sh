#! /bin/bash

fra=$(date -d $1 +%s)
til=$(date -d $2 +%s)

diff=$(( $til - $fra ))

echo "$diff"