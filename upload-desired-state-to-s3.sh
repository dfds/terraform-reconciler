#! /bin/bash

aws s3 mb s3://dfds-ecr-desired-state/
aws s3 mb s3://dfds-actual-state/
aws s3 cp desired_states/truck-configuration.json s3://dfds-ecr-desired-state/truck-configuration.json