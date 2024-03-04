from ubuntu:22.04
run apt-get update -y
run apt-get install nginx unzip curl -y
run echo "daemon off;" >> /etc/nginx/nginx.conf
run curl -o /var/www/html/master.zip -L https://codeload.github.com/gabrielecirulli/2048/zip/master
run cd /var/www/html/ && unzip master.zip && mv 2048-master/* . && rm -rf 2048-master master.zip
EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]

