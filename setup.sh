#!/bin/bash

echo y | mix local.hex
echo y | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
mix local.rebar --force
