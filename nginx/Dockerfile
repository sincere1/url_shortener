FROM nginx:1.19.1

# RUN rm /etc/nginx/nginx.conf
# COPY nginx.conf /etc/nginx/
RUN rm /etc/nginx/conf.d/default.conf
COPY project.conf /etc/nginx/conf.d/
# RUN mkdir -p /static
# COPY static/ /static
