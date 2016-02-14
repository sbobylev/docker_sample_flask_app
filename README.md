# Sample Flask App in a Docker Container

#### Description ####

A very basic Flask app in a Docker container. I've used it to demonstrate Mesos + Marathon + Haproxy docker scaling.

#### Building ####

* ***Method 1***
  *  **Pull the image from the docker registry (docker hub) and rename it**
  ```bash
  docker pull sbobylev/docker_sample_flask_app
  docker tag sbobylev/docker_sample_flask_app docker_sample_flask_app
  docker rmi sbobylev/docker_sample_flask_app
  ```
* ***Method 2*** 
  * **Build the image from scratch**
  ```bash
  git clone https://github.com/sbobylev/docker_sample_flask_app.git
  cd docker_sample_flask_app
  docker build --rm=true -t docker_sample_flask_app .
  ```

#### Running ####

```bash
docker run -p 80:80 -d docker_sample_flask_app
40dd743afd0ca2a09549416ec8b5b9592754f25a93606fd2e1f2c2ed7b406561

docker ps
CONTAINER ID        IMAGE                     COMMAND             CREATED             STATUS              PORTS                NAMES
40dd743afd0c        sample-flask-app:latest   "python app.py"     4 seconds ago       Up 3 seconds        0.0.0.0:80->80/tcp   jolly_wilson
```

#### Testing ####

```bash
curl http://localhost
Your current server is 40dd743afd0c
```
