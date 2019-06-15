core-build:
	docker build -t vincentserpoul/snips-core:v0.0.1 ./core
core-push:
	docker push vincentserpoul/snips-core:v0.0.1
base-build:
	docker build -t vincentserpoul/snips-base:v0.0.1 ./base
base-push:
	docker push vincentserpoul/snips-base:v0.0.1
sat-build:
	docker build -t vincentserpoul/snips-sat:v0.0.1 ./sat
sat-push:
	docker push vincentserpoul/snips-sat:v0.0.1