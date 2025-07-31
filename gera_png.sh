#!/bin/bash
for f in .*.dot; do
  name=$(basename "$f" .dot)
  png="${name#\.}.png"
  dot -Tpng "$f" -o "$png"
  echo "✔️ Gerado: $png"
done
