#! /usr/bin/env bash
# Copyright (c) Jeffrey Kotz 12-5-2024
############################

# i. start nginx
service nginx start

# ii. use sed to replace Welcome to nginx to Welcome to Jeffrey's page
sed -i "s/Welcome to nginx/Welcome to Jeffrey's page/" /var/www/html/*.html

# iii. Use sed to replace ALL instances of nginx with "nginx (pronounced as EgnineX)"
# Capital G didn't replace all but lowercase g did so I used that 
sed -i "s/nginx/nginx (pronounced as EngineX)/g" /var/www/html/*.html

# iv. restart nginx
service nginx restart

# check status to verify nginx is running
service nginx status

bash #Start bash so the docker file doesn't end on it's own when the script is complete
