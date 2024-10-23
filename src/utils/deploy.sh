#!/bin/bash

# This script is intended to be copied to the home directory of the remote server
# and run there. It will:
# 1. Clone latest version of app from Github repo into a new directory.
# 2. Stop any running express server.
# 3. Start express server from latest version directory.

# After running the script the old version of the backend remains in place.
# A revert can be done by manually pointing express back to any old directory.
# Old versions must be cleaned up manually, tho it's advised to keep a few old versions for rollback.

# Notice: this script relies on an .env.production file existing in this system's root
# directory and having all the necessary environment variables set. If said file
# does not exist, script exits with error and no deployment happens.


# Usage:
# 1. Copy this script to the root directory of remote server.
# 2. Run script on remote server with 'sh deploy.sh'

mkdir backend-versions

deoployment_route="backend-versions/temp-680-backyback-$(date +%s)"

echo "Deploying to $deoployment_route"

git clone https://github.com/juanmartinzzz/temp-680-backyback.git "$deoployment_route"

cd "$deoployment_route"

npm install

# pm2 restart all