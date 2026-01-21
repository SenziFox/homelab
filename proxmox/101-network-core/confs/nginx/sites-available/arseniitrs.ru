server {
    listen 80;
    server_name arseniitrs.ru;
    return 301 https://$host$request_uri;
}
server {
    listen 443 ssl;
    http2 on;
    server_name arseniitrs.ru;
    ssl_certificate /etc/letsencrypt/live/arseniitrs.ru/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/arseniitrs.ru/privkey.pem;
    location / {
        proxy_pass http://10.0.100.102:3001;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Forwarded-Host $host;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
        proxy_buffering off;
    }
}