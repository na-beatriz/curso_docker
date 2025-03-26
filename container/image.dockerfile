#minha imagem
FROM mysql:8.0.41-debian

#responsavel pela imagem
USER root

#define uma váriavel para o meu host
ENV host="127.0.0.1"

#define uma váriavel para o minha porta
ENV port="8080"

#define uma váriavel para o meu usuário
ENV user = "ana"

#copia os arquivos de requeriments do meu ambiente para o contâiner
COPY folder/requirements.txt /dir

#copia o arquivo de python do meu ambiente para o contâiner
COPY folder/teste.py /dir

#criando uma pasta e levando os arquivos do meu ambiente para o contâiner
RUN mkdir /requirements.txt

#criando uma pasta e levando o arquivo python do meu ambiente para o contâiner
RUN mkdir /dev

#instalar meus requeriments no meu contâiner
RUN pip install -r /dev/requirements