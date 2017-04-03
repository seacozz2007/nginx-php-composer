Nginx PHP and Composer for larevel Docker

from 
**Nginx-PHP7:** [https://hub.docker.com/r/ericzhang0606/nginx-php-composer](https://hub.docker.com/r/ericzhang0606/nginx-php-composer) 


## Last Version
nginx: **1.11.6**   
php:   **7.1.0**

## Docker Hub   
**Nginx-PHP7-Composer:** [https://hub.docker.com/r/ericzhang0606/nginx-php-composer](https://hub.docker.com/r/ericzhang0606/nginx-php-composer)   
   
## Installation
Pull the image from the docker index rather than downloading the git repo. This prevents you having to build the image on every docker host.
```sh
docker pull ericzhang0606/nginx-php-composer:latest
```

To pull the Nightly Version:   
```
docker pull ericzhang0606/nginx-php-composer:nightly
```

## Running
To simply run the container:
```sh
docker run --name nginx -p 8080:80 -d ericzhang0606/nginx-php-composer
```
You can then browse to http://\<docker_host\>:8080 to view the default install files.

## Volumes
If you want to link to your web site directory on the docker host to the container run:
```sh
docker run --name nginx -p 8080:80 -v /your_code_directory:/data/www -d ericzhang0606/nginx-php-composer
```

## Enabling SSL
```sh
docker run -d --name=nginx \
-p 80:80 -p 443:443 \
-v your_crt_key_files:/usr/local/nginx/conf/ssl \
-e PROXY_WEB=On \
-e PROXY_CRT=your_crt_name \
-e PROXY_KEY=your_key_name \
-e PROXY_DOMAIN=your_domain \
ericzhang0606/nginx-php-composer
```

## Author
Author: Eric    
Email:  84089842@qq.com       

