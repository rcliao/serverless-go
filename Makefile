.PHONY: deps clean build
BUCKET=rcliao-hello-serverless-go
STACKNAME=hello-go

deps:
	go get -u ./...

clean: 
	rm -rf ./hello-world/hello-world
	rm -rf ./go-proverbs/go-proverbs
	
build:
	GOOS=linux GOARCH=amd64 go build -o hello-world/hello-world ./hello-world
	GOOS=linux GOARCH=amd64 go build -o go-proverbs/go-proverbs ./go-proverbs

bucket:
	aws s3 mb s3://$(BUCKET)

package:
	sam package \
		--output-template-file packaged.yaml \
		--s3-bucket $(BUCKET)

deploy:
	sam deploy \
		--template-file packaged.yaml \
		--stack-name $(STACKNAME) \
		--capabilities CAPABILITY_IAM

get-deploy:
	aws cloudformation describe-stacks \
		--stack-name $(STACKNAME) \
		--query 'Stacks[].Outputs'
