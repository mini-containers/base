build: Dockerfile
	docker build -t mini-base .

tag:
	docker tag mini-base mini/base
