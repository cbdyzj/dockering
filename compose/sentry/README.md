# Sentry

## Generate secret key

Add to .env

```shh
docker run --rm sentry config generate-secret-key 
```

## First boot

```sh
docker-compose up -d postgres
docker-compose up -d redis
docker-compose run sentry sentry upgrade
```

## Full boot

```sh
docker-compose up -d
```