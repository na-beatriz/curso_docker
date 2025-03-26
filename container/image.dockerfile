#my image
FROM mysql:8.0.41-debian

#responsible for the image
USER root

#define a variable for my host
ENV host="127.0.0.1"

#define a variable for my port
ENV port="8080"

#define a variable for my user
ENV user = "ana"

#copy the requirements files from my environment to the container
COPY C:/Users/asantalm/Documents/BECA/docker/requirements.txt

#copy the python file from my environment to the container
COPY C:/Users/asantalm/Documents/BECA/docker/teste.py

#creating a folder and taking the files from my environment to the container
RUN mkdir /requirements

#creating a folder and taking the python file from my environment to the container
RUN mkdir /dev

#install my requirements in my containervocê criou a pasta no comando acima, mas não copiou o requirements pra dentro do dev
RUN pip install -r /dev/requirements