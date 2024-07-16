FROM python:3.9

# expose port used by the app
EXPOSE 8080

# set a directory for the app
WORKDIR /app

# copy all the files to the container
COPY requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY . /app

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8080"]
