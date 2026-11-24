FROM nginx:alpine


LABEL project="tramasul-onepage"
LABEL description="Imagem Docker com Nginx para servir a one-page da Companhia tramasul"


# Remove os arquivos padrão do Nginx e copia a aplicação
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html


# Expõe a porta HTTP padrão
EXPOSE 80


# Mantém o Nginx em primeiro plano dentro do container
CMD ["nginx", "-g", "daemon off;"]
