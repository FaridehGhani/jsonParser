#!/bin/bash

echo "testing step1 - valid json file"
if go run main.go test/step1/valid.json; then
    echo "valid test passed"
else
    echo "valid test failed"
fi

echo "testing step1 - invalid json file"
if ! go run main.go test/step1/invalid.json; then
    echo "invalid test failed"
else
    echo "invalid test passed"
    exit 1
fi

echo "testing step2 - valid json file"
if go run main.go test/step2/valid.json; then
    echo "valid test passed"
else
    echo "valid test failed"
fi

echo "testing step2 - invalid json file"
if ! go run main.go test/step2/invalid.json; then
    echo "invalid test failed"
else
    echo "invalid test passed"
    exit 1
fi

echo "testing step3 - valid json file"
if go run main.go test/step3/valid.json; then
    echo "valid test passed"
else
    echo "valid test failed"
fi

echo "testing step3 - invalid json file"
if ! go run main.go test/step3/invalid.json; then
    echo "invalid test failed"
else
    echo "invalid test passed"
    exit 1
fi

echo "testing step4 - valid json file"
if go run main.go test/step4/valid.json; then
    echo "valid test passed"
else
    echo "valid test failed"
fi

echo "testing step4 - invalid json file"
if ! go run main.go test/step4/invalid.json; then
    echo "invalid test failed"
else
    echo "invalid test passed"
    exit 1
fi

echo "all tests executed successfully"