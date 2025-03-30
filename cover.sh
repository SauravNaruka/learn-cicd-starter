#!/bin/bash

t=$(mktemp -t coverXXXXXX)
go test -coverprofile=$t "$@" && go tool cover -func=$t
unlink $t
