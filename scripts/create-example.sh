#!/bin/bash
TOKEN='BAhJIiVhODkxYTI3NTE5ZDVlYWE0MzY0ZTEyOGQ3ZjE3Y2ZhZAY6BkVG--afc1576788f6870847865f4be00f43f84b62ee3d'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
