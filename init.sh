
# Construir las imagenes 
docker-compose -f local.yml build
# Dokcer logs <idcontenedor>
# Correr el stack
docker-compose -f local.yml up
# ver el estado de los processos de Docker
docker-compose -f local.yml ps
# Detener la ejecuccion 
docker-compose -f local.yml down

export COMPOSE_FILE=local.yml


# comandos administrativos 
-rm mata el contenedor
# correr terminal django
docker-compose run --rm django python manage.py creartesuperuser
docker-compose run --rm django sh

# HABILITAR DEBBUGER
docker-compose up
dokcer-compose ps
dokcer rm -f <id contianert to kill>

# correr contanedor de django solo
docker-compose run --rm --service-ports django
# SERVICE-PORTS: EXPONE LOS PUERTOS
