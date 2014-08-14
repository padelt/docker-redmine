#!/bin/bash
docker run -d -v /docker-store/redmine/config/database.yml:/usr/local/redmine/config/database.yml:rw \
  -v /docker-store/redmine/config/configuration.yml:/usr/local/redmine/config/configuration.yml:rw \
  -v /docker-store/redmine/files:/usr/local/redmine/files \
  -v /docker-store/redmine/plugins:/usr/local/redmine/plugins \
  -p 3000:3000 \
  --name redmine \
  -i -t padelt/redmine
