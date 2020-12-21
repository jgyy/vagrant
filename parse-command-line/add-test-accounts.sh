#!/bin/bash
# Add some accounts to test with
if [[ "${UID}" -ne 0 ]]
then
  echo 'Please run with sudo or as root.' >&2
  exit 1
fi

for U in carrief markh harrisonf alecg petern apple banana carrot
do
  useradd ${U}
  echo -e 'pass123' | passwd ${U}
done