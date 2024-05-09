# Fetching the latest nginx image
FROM nginx:1.23-alpine

# Removing default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

COPY default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
