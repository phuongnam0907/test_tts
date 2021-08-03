# Install The Things Stack

## Docker TTS
```
docker-compose pull

docker-compose run --rm stack is-db init

docker-compose run --rm stack is-db create-admin-user   --id admin   --email your@email.com

docker-compose run --rm stack is-db create-oauth-client   --id cli   --name "Command Line Interface"   --owner admin   --no-secret   --redirect-uri "local-callback"   --redirect-uri "code"

CONSOLE_SECRET="console"

SERVER_ADDRESS="192.168.1.15"

docker-compose run --rm stack is-db create-oauth-client   --id console   --name "Console"   --owner admin   --secret "${CONSOLE_SECRET}"   --redirect-uri "${SERVER_ADDRESS}/console/oauth/callback"   --redirect-uri "/console/oauth/callback"   --logout-redirect-uri "${SERVER_ADDRESS}/console"   --logout-redirect-uri "/console"

docker-compose up
```