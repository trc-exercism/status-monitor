FROM elixir:1.4.4

RUN apt-get update && apt-get install -y wget
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
COPY status_monitor /src/status_monitor

WORKDIR /src/status_monitor

CMD mix phoenix.server
