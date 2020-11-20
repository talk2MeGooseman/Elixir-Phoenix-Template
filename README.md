# Phoenix-Dev-Container-Template

This template was designed to work as a Visual Studio Code Dev Container.

After cloning this template and connecting to this directory as a Dev Container, it should have everything you need to get a new Elixir/Phoenix project up and running.

To create a new Phoenix application just run the normal new command but with a twist:
```
mix phx.new . --app your_app_name
```
Run the command in the current working directory so it generate in the root of your repository instead of having an additional nested directory.

After running the command you should be done and you never had to install any dependencies locally :)
