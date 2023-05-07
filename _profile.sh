# sh _profile.sh PROJECT VERSION

DIR=../just-the-docs-tests

rm Gemfile.lock
bundle install > /tmp/install.log
bundle exec jekyll clean > /tmp/install.log
bundle exec jekyll build --config _config.yml,$DIR/_config_$2.yml --profile > $DIR/_includes/profiles/$1/$2.txt 2> /tmp/build.log
