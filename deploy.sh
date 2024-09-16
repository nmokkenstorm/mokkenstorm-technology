 #!/usr/bin/env bash

getEnv() {
  local VARIABLE="$1"
  (
    source .env
    echo "${VARIABLE}"
  )
}

rsync -rvva --exclude .git --exclude .env . "root@$(getEnv HOST):$(getEnv ROOT)"
