#!/bin/bash

# URL do site
URL="http://localhost"

# Caminho para o log
LOG="/var/log/monitoramento.log"

# Webhook (Insira entre as aspas)
WEBHOOK_URL=""

# Data e hora atual
DATA=$(/bin/date '+%Y-%m-%d %H:%M:%S')

# Verifica se o site responde (200 = OK)
HTTP_CODE=$(/usr/bin/curl -s -o /dev/null -w "%{http_code}" $URL)

# Se o código HTTP for diferente de 200, vai considerar como erro
if [ "$HTTP_CODE" -ne 200 ]; then
    MENSAGEM="$DATA - ERRO: Site indisponível! Código HTTP: $HTTP_CODE"
    
    # Grava no log
    echo "$MENSAGEM" >> $LOG

    # Envia alerta para o webhook
    curl -H "Content-Type: application/json" \
         -X POST \
         -d "{\"content\": \"$MENSAGEM\"}" \
         $WEBHOOK_URL
         # Reinicia o Nginx
         sudo systemctl restart nginx
else
    echo "$DATA - OK: Site funcionando normalmente. Código HTTP: $HTTP_CODE" >> $LOG
fi
