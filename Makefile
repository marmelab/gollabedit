run:
	docker run \
		--rm \
		--volume="`pwd`:/srv" \
		--tty \
		--interactive \
		--publish="8080:8080" \
		marmelab/go run src/marmelab/gollabedit/*.go
