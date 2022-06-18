# local-embulk

# Usage

## Create .env
```
cp .env.sample .env
vi .env
```

## Start up
```
docker-compose up
```

## Test
```
docker exec -it embulk /bin/bash
embulk run config.yml.liquid
```