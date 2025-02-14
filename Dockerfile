# I used a minimal and secure base image
FROM nginx:alpine

# Setup a non-root user for security
RUN addgroup -S nginx && adduser -S nginx -G nginx


WORKDIR /usr/share/nginx/html

COPY --chown=nginx:nginx . .

RUN chmod -R 755 /usr/share/nginx/html && \
    chmod -R 755 /var/cache/nginx && \
    chmod -R 755 /var/log/nginx && \
    chmod -R 755 /etc/nginx/conf.d

# Expose port
EXPOSE 80

# Use a non-root user
USER nginx

# Start Nginx securely
CMD ["nginx", "-g", "daemon off;"]
