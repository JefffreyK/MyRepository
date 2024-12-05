FROM ubuntu

# RUN apt install nginx
# CMD mkdir /bin

COPY assignment.sh /bin/
RUN chmod +x /bin/assignment.sh
RUN chmod +rwx -R /bin
RUN /bin/assignment.sh

RUN apt update
RUN apt install -y nginx 
RUN service nginx start
#CMD bash /bin/assignment.sh
