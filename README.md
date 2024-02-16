# info from
https://www.freecodecamp.org/news/how-to-dockerize-a-flask-app/

# build container
 > docker build --tag python-docker .

# run flask app on container (5000 port is a default port for flask)
 > docker run -d -p 5001:5000 python-docker
 
# open app
 > http://127.0.0.1:5001/

# go into container
 > docker exec -t -i <container_name> /bin/bash
