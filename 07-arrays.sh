#!/bin/bash

BOOKS=("genesis" "exodus" "leviticus" "numbers" "duetoronomy")

echo "${BOOKS[1]}"
echo "second book:: ${BOOKS[2]}"
echo "third book:: ${BOOKS[3]}"
echo "${BOOKS[@]}"


