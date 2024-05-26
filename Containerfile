FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_learning create-db
RUN flask_learning populate-db
RUN flask_learning add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_learning", "run"]
