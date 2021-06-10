#! /bin/bash
# shellcheck disable=SC2185
filer=$(find -type f | wc -l)
mapper=$(find -type d | wc -l)
linker=$(find -type l | wc -l)

echo "Antall filer: $filer"
echo "Antall mapper: $mapper"
echo "Antall linker: $linker"