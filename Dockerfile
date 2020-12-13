FROM nginx:latest
RUN sed -i 's/nginx/test/g' /usr/share§nginx/html/index.html
EXPOSE 80

