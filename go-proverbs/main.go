package main

import (
	"encoding/json"
	"fmt"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/jboursiquot/go-proverbs"
)

func handler(request events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	p := proverbs.Random()
	b, err := json.Marshal(p)
	if err != nil {
		fmt.Print("Failed to convert proverbs to JSON string", err)
		return events.APIGatewayProxyResponse{
			Body:       "Failed to convert proverbs to JSON string",
			StatusCode: 503,
		}, err
	}
	return events.APIGatewayProxyResponse{
		Body:       string(b),
		StatusCode: 200,
	}, nil
}

func main() {
	lambda.Start(handler)
}
