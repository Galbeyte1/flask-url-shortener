# flask-url-shortener

## Recreation Set up & Installation.

### Create a virtual enviornment

**macOS/Linux**

`python3 -m venv venv`

### Activate the enviornment

**macOS/Linux**

```. venv/bin/activate```
or
```source venv/bin/activate```

### Install Flask

`pip install Flask`


### Create the required files
Create two files; **requirements.txt**

`touch requirements.txt && pip freeze > requirements.txt` 


## Building From Dockerfile

`docker build -t flask-url-shortner . `

`docker run flask-url-shortner`

### Debug: Port not reachable

Confirm container is not running on desired port

`docker ps`

Run existing container with desired port

`docker run -p 5000:5000 flask-url-shortener`


## Docker Compose

