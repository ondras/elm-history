#!/bin/bash

# Run a test application for integration test
# This needs to be a the root of the project so the 
# test application has access to the src directory

cd test/integration/test_app
elm package install -y
elm reactor
