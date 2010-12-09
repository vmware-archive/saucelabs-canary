#!/usr/bin/env bash
source $HOME/.rvm/environments/1.8.7-p299@saucelabs-canary #  have to hardcode env to match the one in .rvmrc
source .rvmrc
export IS_CI_BOX=true
rvm exec bundle install
rake $@
