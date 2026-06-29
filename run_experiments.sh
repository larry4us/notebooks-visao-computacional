#!/usr/bin/env bash
# Roda todos os notebooks como scripts e persiste apenas outputs/
# Uso: ./run_experiments.sh [ModuloN] [ModuloN ...]
# Sem args: roda todos os módulos

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUTS_DIR="$REPO_ROOT/outputs"
SCRIPTS_DIR="$REPO_ROOT/.nb_scripts"
LOG_DIR="$OUTPUTS_DIR/logs"

MODULES=("${@}")
if [ ${#MODULES[@]} -eq 0 ]; then
    MODULES=("Modulo1" "Modulo2" "Modulo3" "Modulo4" "Modulo5" "Modulo6")
fi

mkdir -p "$OUTPUTS_DIR" "$SCRIPTS_DIR" "$LOG_DIR"

echo "=== Convertendo notebooks para scripts ==="
for module in "${MODULES[@]}"; do
    module_path="$REPO_ROOT/$module"
    if [ ! -d "$module_path" ]; then
        echo "AVISO: $module não encontrado, pulando."
        continue
    fi
    find "$module_path" -name "*.ipynb" | while read -r nb; do
        echo "  Convertendo: $nb"
        jupyter nbconvert --to script "$nb" --output-dir "$SCRIPTS_DIR" 2>/dev/null
    done
done

echo ""
echo "=== Rodando scripts ==="
FAILED=()

find "$SCRIPTS_DIR" -name "*.py" | sort | while read -r script; do
    name="$(basename "$script" .py)"
    log_file="$LOG_DIR/${name}.log"
    echo "  Rodando: $name"
    if python "$script" > "$log_file" 2>&1; then
        echo "    OK"
    else
        echo "    FALHOU — ver $log_file"
        FAILED+=("$name")
    fi
done

# Limpar scripts temporários (não commitar)
rm -rf "$SCRIPTS_DIR"

echo ""
echo "=== Commitando outputs/ ==="
cd "$REPO_ROOT"

if [ -n "$(git status --porcelain outputs/)" ]; then
    git add outputs/
    timestamp="$(date '+%Y-%m-%d %H:%M')"
    git commit -m "outputs: resultados de ${timestamp}"
    git push
    echo "Push feito."
else
    echo "Nada novo em outputs/ para commitar."
fi

if [ ${#FAILED[@]} -gt 0 ]; then
    echo ""
    echo "Scripts que falharam:"
    for f in "${FAILED[@]}"; do echo "  - $f"; done
    exit 1
fi

echo ""
echo "Pronto."
