sudo rm -rf .env
rm -rf blob
sudo docker-compose pull
docker-compose run --rm stack is-db init
docker-compose run --rm stack is-db create-admin-user \
  --id admin \
  --email your@email.com
