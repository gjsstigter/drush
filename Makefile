build:
	docker build -t drush/drush:base base
	docker build -t drush/drush:10
version:
	docker run drush/drush:10 --version

test:
	@make version
