#!/bin/bash
docker run --rm -d \
  -p 5432:5432 \
  -v postgres-tmp:/var/lib/postgresql/data \
  -e POSTGRES_HOST_AUTH_METHOD=trust \
  --name blog_postgresql \
  postgres:12.5
