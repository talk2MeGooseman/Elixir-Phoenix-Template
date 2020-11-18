FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb

# install hex + rebar
RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    mix local.hex --force && \
    mix archive.install hex phx_new 1.5.3 --force && \
    mix local.rebar --force

RUN rm -fr erlang-solutions*

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
