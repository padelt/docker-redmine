#!/bin/bash
docker run --rm -v /docker-store/redmine/config/database.yml:/usr/local/redmine/config/database.yml:rw \
  -v /docker-store/redmine/config/configuration.yml:/usr/local/redmine/config/configuration.yml:rw \
  -v /docker-store/redmine/files:/usr/local/redmine/files \
  -v /docker-store/redmine/plugins:/usr/local/redmine/plugins \
  -e "RUN_MIGRATION=True" \
  -i -t padelt/redmine
