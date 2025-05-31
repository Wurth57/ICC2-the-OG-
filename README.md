# ICC-2-DFMF-Rep
# About 
This is the personal repository of Wurth57. 
I'll keep updating this repository as I advance through my cybersecurity course. 
# Folder Structure 
```bash 
- exercises/ # All the scripts, bash, powershell, python go here. 
|_ resources/ # All the helpful resources you come across in your journey go here. 
``` 
#Makesureyoudontforget: explain what the repository is about and keeps it structured. 
## nginx_config

Este diretório contém a configuração e os ficheiros usados para montar um servidor web seguro com NGINX no Ubuntu, como parte de um exercício de laboratório.

### Conteúdo:
- `/etc/nginx/nginx.conf`: configurações globais do NGINX (inclui masking de versão e rate limiting)
- `/etc/nginx/sites-available/default`: configuração do site HTTP com:
  - Página personalizada
  - Bloqueio de ficheiros sensíveis (`.git`, `.htpasswd`)
  - Proteção contra DoS via `limit_req`
- `/var/www/html/index.html`: página personalizada para teste

### Objetivo:
Implementar práticas de segurança em servidores web, nomeadamente:
- Ocultar a versão do NGINX
- Restringir o acesso a ficheiros confidenciais
- Prevenir ataques de negação de serviço simples (DoS)
- Criar uma página web acessível via HTTP para validação da configuração

### Testes realizados:
- Acesso via navegador à página personalizada
- Teste de bloqueio de diretórios sensíveis (`/.git`, `/.htpasswd`)
- Validação de headers HTTP com `curl`
- Teste de carga com `ab` (ApacheBench) para simular múltiplas conexões
