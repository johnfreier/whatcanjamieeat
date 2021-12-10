# whatcanjamieeat

This is a static site dedicated to an optimal food diet.

## Install Instructions
1. Install Ruby (Tested on 2.7, 3.0)
2. Run bundle install

## Build static site
This will build the site in side the _site directory.

`jekyll build`

## Crontab auto deploy
Run the auto deploy script every hour.
```
PROJECT_DIR={path_to_project}
TARGET_DIR={path_to_site}

* 1 * * * /{path_to_project}/deploy.sh >> /{path_to_log}/log.log 2>&1
```
