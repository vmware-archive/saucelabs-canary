#!/usr/bin/env bash
export IS_CI_BOX=true
bundle install
rake selenium:ci
