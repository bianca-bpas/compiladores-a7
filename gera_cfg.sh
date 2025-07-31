#!/bin/bash
set -e

echo "🔧 Gerando operacoes_mod.bc..."
clang -emit-llvm -c operacoes_mod.c -o operacoes_mod.bc

echo "📊 Gerando arquivos .dot com opt..."
opt -passes=dot-cfg operacoes_mod.bc -disable-output

echo "🖼️ Convertendo arquivos .dot para PNG..."
for f in cfg.*.dot; do
  [ -f "$f" ] || continue
  dot -Tpng "$f" -o "${f%.dot}.png"
  echo "✔️ Gerado: ${f%.dot}.png"
done
