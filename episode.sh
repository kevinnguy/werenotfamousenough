#!/bin/sh

echo "Enter episode number"
read epnumber
echo ""

if [[ -n $(find . -maxdepth 1 -name "$epnumber-*") ]]; then
  # episode exists, do nothing
  echo "Episode exists. Increment your episode number"
  exit 1
fi

echo "Enter episode name"
read epname
echo ""

mkdir ./$epnumber-${epname//[^a-zA-Z0-9]/-}
echo "Created $epnumber-${epname//[^a-zA-Z0-9]/-} directory"

exit 1
