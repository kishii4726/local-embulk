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

## Generate original onfig.yml
```
vi csv/sample_2.csv
embulk guess seed.yml -o config_2.yml
```