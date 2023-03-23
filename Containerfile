FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN vcid create-db
RUN vcid populate-db
RUN vcid add-user -u admin -p admin
EXPOSE 5000
CMD ["vcid", "run"]
