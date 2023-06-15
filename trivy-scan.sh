#!/bin/bash

# Basically an example of a trivy quality gate with an HTML report.

image_name="alpine:latest"

trivy image --exit-code 0 --severity UNKNOWN,LOW,MEDIUM,HIGH --no-progress $image_name
trivy image --exit-code 1 --severity CRITICAL --ignore-unfixed $image_name
trivy image --format template --template "@/usr/local/share/trivy/templates/html.tpl" -o trivy-report.html $image_name