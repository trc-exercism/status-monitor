FROM elixir:1.4.4

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update && apt-get install -y esl-erlang
RUN mix local.hex --force
RUN mix local.rebar --force
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force
COPY . /src

WORKDIR /src/status_monitor

RUN mix deps.get
RUN npm install

CMD mix phoenix.server
