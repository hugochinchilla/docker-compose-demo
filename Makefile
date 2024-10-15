.PHONY:
setup-local: .env

.env:
	@echo COMPOSE_PROFILES=local >> .env
	@echo MYSQL_PASSWORD=$(shell openssl rand -base64 12) >> .env
	@echo ".env file was created"

.PHONY:
setup-production:
	@echo "!!! Warning !!! never execute this outside production environment:"
	@echo ""
	@echo "Copy the following lines and execute them:"
	@echo ""
	@echo 'echo COMPOSE_PROFILES=production >> .env'
	@echo 'echo MYSQL_PASSWORD=$$(openssl rand -base64 12) >> .env'
