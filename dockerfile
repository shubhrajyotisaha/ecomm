FROM ubuntu
ENV pkg1 nginx
ENV pkg2 git
RUN yum update  
RUN yum install $pkg1
RUN yum install git
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
