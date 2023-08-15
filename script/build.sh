#!/bin/sh

set -e

gem install html-proofer
bundle exec jekyll build
bundle exec htmlproofer ./_site --url-ignore '/fonts.gstatic.com/'
gem build snakemake-plugin-docs-jekyll.gemspec
