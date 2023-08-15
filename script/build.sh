#!/bin/sh

set -e

gem install html-proofer
bundle exec jekyll build
bundle exec htmlproofer ./_site
gem build snakemake-plugin-docs-jekyll.gemspec
