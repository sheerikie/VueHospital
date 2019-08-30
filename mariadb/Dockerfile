FROM mariadb:10
#set user
ENV MYSQL_USER=root
#set root password
ENV MYSQL_PASSWORD=
ENV MYSQL_ROOT_PASSWORD=r
ENV MYSQL_DATABASE=collabmed
COPY expressbooking_dump.sql /docker-entrypoint-initdb.d/
