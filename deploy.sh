 #!/usr/bin/env bash

parseEnv() {
  echo $(grep $1 .env | grep -oE '=.*' | sed 's/^=//g' | sed 's/"//g');
}

HOST=$(parseEnv HOST)
ROOT=$(parseEnv ROOT)

rsync -rvva --exclude .git --exclude .env . root@$HOST:$ROOT
