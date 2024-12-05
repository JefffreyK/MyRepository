# Copyright (c) Jeffrey Kot 12/5/2024

# i. extend ubuntu image
FROM ubuntu

# ii. Install nginx and vim
RUN apt update
RUN apt install -y vim
RUN apt install -y nginx

# iii. Copy the app script from Docker constext into docker instance
COPY assignment.sh /bin/
# additionally grant execution permissions to the copied scripts
RUN chmod +x /bin/assignment.sh
RUN chmod +rwx -R /bin

# iv. Invoke the app script
CMD bash /bin/assignment.sh

# Run docker file with $> sudo docker run -it -p 80:80 docker-img
# If port is in use then end nginx first $> sudo nginx stop
