# Usage

### Test local development

Try to execute the environment:
    
    docker-compose up -d

See that it fails because you don't have the required config.
Configure the environment and try again:

    make setup-local
    docker-compose up -d
 
See that the backup service was not executed as it's only for production:

    docker compose ps -a

(I'm using dummy docker images so the services won't stay up)


### Test production execution

Cleanup local environment 

    docker compose down -v
    rm .env

Setup production

    make setup-production

Follow on screen instructions and start the services

    docker compose up -d

See that all services were executed:

    docker compose ps -a
