#!/bin/bash

# Verifica se foi fornecida uma mensagem personalizada
if [ -z "$1" ]; then
  echo "Usage: $0 \"your custom message\""
  exit 1
fi

# Variáveis
timestamp=$(date +"%Y-%m-%d %H:%M:%S")
username=$(whoami)
message="$1"
log_file="./user_activity.log"

# Escreve no log
echo "[$timestamp] User: $username - Log entry: $message" >> "$log_file"

