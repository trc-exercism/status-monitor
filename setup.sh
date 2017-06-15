#!/bin/bash

# TODO: Make platform independent
# TODO: Branch if installed
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
rm erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang
sudo apt-get install elixir

echo y | mix local.hex
echo y | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
mix local.rebar --force

pushd status_monitor
  mix deps.get
  mix ecto.create
popd
