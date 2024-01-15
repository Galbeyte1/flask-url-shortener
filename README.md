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


### Switching to pipenv

`pip install pipenv`

Once you’ve done that, you can effectively forget about pip since Pipenv essentially acts as a replacement. It also introduces two new files, the Pipfile (which is meant to replace requirements.txt) and the Pipfile.lock (which enables deterministic builds).

Pipenv uses pip and virtualenv under the hood but simplifies their usage with a single command line interface.

Source: https://realpython.com/pipenv-guide/#pipenv-introduction

If you only have a requirements.txt file available when running pipenv install, pipenv will automatically import the contents of this file and create a Pipfile for you.

You can also specify $ pipenv install -r path/to/requirements.txt to import a requirements file.

Source: https://pipenv.pypa.io/zh-cn/stable/basics.html#importing-from-requirements-txt


## Building From Dockerfile

`docker build -t flask-url-shortner . `

`docker run flask-url-shortner`

### Debug: Port not reachable

Confirm container is not running on desired port

`docker ps`

Run existing container with desired port

`docker run -p 5000:5000 flask-url-shortener`


## Docker Compose

