#İşlem-3
user  nginx;
worker_processes  1;

error_log  /var/log/nginx/error.log warn;
pid        /var/run/nginx.pid;

events {
    worker_connections  1024;
}

http {
    server {
        listen 80;
        server_name example.com;
        root /var/www/html;

        location / {
            index index.html;
        }
    }
}
