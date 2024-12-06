FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN service apache2 start
RUN apt-get -y install git
RUN git clone https://github.com/Nikhil3389/devops-aws.git app
RUN cp -r /app/assets /var/www/html/
RUN cp -r /app/images /var/www/html/
RUN cp -r /app/error /var/www/html/
RUN cp /app/index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV name <Devops>
