# ETAPA 1: Usar uma imagem base oficial do Nginx
# A versão 'alpine' é super leve, o que resulta em uma imagem final menor.
FROM nginx:stable-alpine

# ETAPA 2: Copiar os arquivos do seu site
# Copia o conteúdo da pasta atual (onde está o Dockerfile) para a pasta padrão do servidor Nginx dentro do contêiner.
COPY . /usr/share/nginx/html

# ETAPA 3: Expor a porta
# Informa ao Docker que o contêiner escutará na porta 80 (porta padrão para HTTP).
EXPOSE 8080