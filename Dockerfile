mkdir web1
cd web1
apt install vim
vi Dockerfile
vi test.py
ls
docker build -t mypimage:1.0 .
docker run --name p1 -p 9050:80 -d mypimage:1.0
docker images
docker ps -a


dockerfile--------
FROM ubuntu:20.04
RUN apt update -y
RUN apt upgrade -y
RUN apt-get install python3 -y
RUN mkdir /web1
COPY . /web1/
CMD [ "python3" , "web1/test.py" ]


create python file ---test.py in web1



--------------------------------------------------------
apt install python -y
mkdir python1
cd python1
apt install vim
vi Dockerfile
vi test.py
ls
docker build -t mypimage1:1.0 .
docker run --name p2 -d -p 9120:80 mypimage1:1.0
docker images
docker ps -a


dockerfile------
FROM python:3
RUN apt update -y
RUN apt upgrade -y
RUN mkdir /python1
COPY . /python1/
CMD [ "python3" , "python1/test.py" ]


create python file ---test.py in python1




--------------------------------------------------------------------




mkdir nginx1
cd nginx1
apt install vim
vi Dockerfile
vi index.html
ls
docker build -t mynimage:1.0 .
docker run --name n2 -d -p 9350:80 mynimage:1.0
docker images
docker ps -a


dockerfile------
FROM nginx
COPY . /usr/share/nginx/html/



create index file ---index.html in nginx1

----------------------------------------------------------

mkdir httpd1
cd httpd1
apt install vim
vi Dockerfile
vi index.html
ls
docker build -t myhimage:1.0 .
docker run --name h2 -d -p 9450:80 myhimage:1.0
docker images
docker ps -a


dockerfile------
FROM httpd
COPY . /usr/local/apache2/htdocs/



create index file ---index.html in httpd1
