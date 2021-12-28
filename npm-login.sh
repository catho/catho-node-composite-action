 #!/bin/bash
set -e

touch ./.npmrc
echo "//registry.npmjs.org/:_authToken=${1}" >> ./.npmrc 
