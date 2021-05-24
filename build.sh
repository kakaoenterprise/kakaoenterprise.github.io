#!/bin/sh
git checkout source
docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production -p 4000:4000 jekyll/jekyll:3.8 jekyll build --config _config.yml
