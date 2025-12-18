#!/bin/bash
#myScript
echo "togetherandforever"

echo "Hello, everyone!"
echo "Today: $(date)"
echo "Current user: $(user)"
echo "We're in the directory: $(pwd)"
echo "Today: $(cal)"

echo "Summary: 2+2 = $((2+2))"

for i in 1 2 3 4 5; do
    echo "$i time(s)"
    sleep 0.8
done

while true; do
    echo "Stop me if you can!"
    sleep 0.25
done