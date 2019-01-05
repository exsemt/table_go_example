master: [![pipeline status](https://gitlab.com/exsemt/table_go_example/badges/master/pipeline.svg)](https://gitlab.com/exsemt/table_go_example/commits/master)
develop: [![pipeline status](https://gitlab.com/exsemt/table_go_example/badges/develop/pipeline.svg)](https://gitlab.com/exsemt/table_go_example/commits/develop)

# table go example application

link: http://table-go-example.exsemt.de

## How to use this app

### Simple way to start this app local, that is with docker for mac:
```
docker-compose up -d --build
```
local url: `http://localhost:3000`

### Stop and clean

```
docker-compose down
```

### Local development

```
docker-compose up -d --build

docker-compose ps
docker-compose logs -f

```

## deploy on docker server from local
```
ruby deploy_from_local.rb USER@IP-ADDRESS
```
