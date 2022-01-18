#/bin/bash
# Regenerate query files for test manifest

for type in "sparql"; do
echo "Generating $type tests"
pushd $type
  while read line; do
    linesplit=($line)
    label=${linesplit[0]}
    echo "  - $label"
    rm -rf $label
    ldf-recorder ${linesplit[@]:1} "$(<$label.rq)"
    mv tests $label
  done < manifest-raw.txt
popd
done