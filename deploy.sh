#!/bin/bash
rsync --exclude-from=.gitignore --exclude=.git -av ./ web@nuke:/web/push-four/
scp .env web@nuke:/web/push-four/