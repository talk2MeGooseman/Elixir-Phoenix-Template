sudo apt-get update

sudo apt-get install -y postgresql-client

sudo apt-get install -y inotify-tools

echo "Fetching Erlang & Elixir Deps"
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt-get update -y
rm -fr erlang-solutions*

echo "Install Erlang"
sudo apt-get install esl-erlang -y

echo "Install Elixir"
sudo apt-get install elixir -y

mix local.hex --force

mix archive.install hex phx_new 1.5.3 --force

mix local.rebar --force
