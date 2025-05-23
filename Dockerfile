# im using python so this is the base image
FROM python:3.11-slim

# set working directory inside docker
WORKDIR /app

# copy code into docker image
COPY . .

# run the python program
CMD ["python", "main.py"]