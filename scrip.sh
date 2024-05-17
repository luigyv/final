#!/bin/bash
echo "FROM python:3" > Dockerfile
echo "COPY requeriments.txt /home/." >> Dockerfile
echo "RUN pip install -r /home/requeriments.txt" >> Dockerfile
echo "EXPOSE 8020 " >> Dockerfile
echo "WORKDIR /home/app/" >> Dockerfile
echo "COPY server.py . " >> Dockerfile
echo "CMD python3 server.py" >> Dockerfile
docker build -t sample .
docker run -t -d -p 8020:8020 --name samrun sample
docker ps -a
