# Linux
Escolha sua distribuição Linux (eu uso Mint, que é baseado no Ubuntu)  
Antes de instalar qualquer pacote em Linux, é ideal que veja se não tem nenhum pacote a ser atualizado. Para isso, use o comando:  
```sudo apt update```  
Caso tenha algum para ser atualizado:  
```sudo apt upgrade```
# Nginx:
Nginx é um servidor web open source que não vem instalado no Linux, para baixar, é necessário o comando:  
```sudo apt install nginx -y```  
Também é necessário ligá-lo para ele funcionar, o comando é:  
```sudo systemctl start nginx```  
Se quiser pará-lo:  
```sudo systemctl stop nginx```
Para fazer com que ele seja iniciado automaticamente junto da máquina:  
```sudo systemctl enable nginx```  
Para conferir se ele está funcionando:  
```sudo systemctl status nginx```
# Cron
Cron é um serviço que executa tarefas agendadas automaticamente. Geralmente já vem instalado, mas caso não venha, execute o comando:  
```sudo apt install cron -y```  
Para ligá-lo:  
```sudo systemctl enable --now cron```  
Para conferir seu status:  
```sudo systemctl status cron```
# Curl:
Curl é uma ferramenta usada para fazer requisições HTTP. Geralmente, também vem instalado. Para ver se ele está instalado, use o comando:  
```curl --version```   
Caso não venha, execute o comando:  
```sudo apt install curl -y```  
# Shell Script
Shell Script é um arquivo que será executado por um shell, um interpretador de linha de comando em sistemas operacionais tipo Unix  
# Webhook
Webhook é um método de comunicação entre aplicações web, onde um sistema envia dados em tempo real caso algo específico descrito no script do sistema ocorra
