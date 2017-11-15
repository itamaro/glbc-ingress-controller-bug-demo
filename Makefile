BASEDIR=$(CURDIR)

build:
	pipenv run ybt build

push:
	pipenv run ybt build --push

run:
	docker run -it --rm -p 5000:5000 app_app

deployapp:
	kubectl apply -f deploy/app.yaml --record

deploying:
	kubectl apply -f deploy/ing.yaml --record

deployall:
	kubectl apply -f deploy --record

clean:
	rm -rf $(BASEDIR)/yabtwork
	docker rmi app_app

.PHONY: build push run deployapp deploying deployall clean
