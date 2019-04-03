IMAGE_NAME 	:=	petems/dummy-git-repo
SAMPLE_REPO	:=  ./example/repositories/sample-repo

all: image

test:
	./test.sh

image:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d -p "8080:80" petems/dummy-git-repo

clone:
	git clone http://localhost:8080/dummy-repo.git
