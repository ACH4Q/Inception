#!/bin/bash

sleep 5

until mysqladmin -hmariadb -u${MYSQL_USER} -p${MYSQL_PASSWORD} ping; do
    echo "Waiting for MariaDB connection..."
    sleep 2
done

cd /var/www/html

if [ ! -f "wp-config.php" ]; then
    echo "WordPress not found. Starting installation..."
    wp core download --allow-root
    wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --allow-root
    wp core install --url=${DOMAIN_NAME}  --title="Inception" --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --allow-root
    wp user create ${WP_USER} ${WP_USER_EMAIL}  --role=author  --user_pass=${WP_USER_PASSWORD}  --allow-root
    echo "WordPress installation complete."
else
    echo "WordPress is already installed."
fi
chown -R www-data:www-data /var/www/html
exec "$@"