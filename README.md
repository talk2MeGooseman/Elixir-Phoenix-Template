# Elixir-Phoenix-Dev-Container-Template

Want to get start coding some Elixir? Want to generate a new Phoenix project but dont want to go through the hassel of installing all the dependencies? Well I got the solution for you!

This very repo :D

This template was designed to work as a Visual Studio Code Dev Container and Github Codespaces to easily work with Elixir or start a Phoenix project without having to ever install anything on your computer (other than Docker). Want work of tablet? No problem! If you have access to Github Codespaces this will launch a codespace that will have everything you need to get started also.

After selecting `Use this template`, create the repository for your project. Now you can either clone it locally are get started coding right away in codespaces.

If you decide to clone your new project locally and want to get started coding. Just open it up in Visual Studio Code and `Reopen in Container`. This step will take a little bit while it downloads the Elixir Docker image and runs the installation scripts. But after it done you will be developing inside your new `Dev Conatiner`. 

Now that your inside your `Dev Container` you have access to `iex`, `mix`, `npm`, and `node`. From here you can generate your Phoenix project doing the following command:
```
mix phx.new . --app your_app_name
```
Running this command in the current working directory is necessary so it generates in the root of your repository instead of having an additional nested directory.

After running the command you should be done and you never had to install any dependencies locally :)

**But what if I already have a project and just want a cool Dev Conatiner so I can code anywhere (like in Github Codespaces)?**

Not a problem! All you have to do is just copy the contents of the `.devcontainer` folder and put it in your project. Inside there is all the goodness you need. 

## Configuration

If you need a specific version of Elixir, crack open `docker-compose.yml` and change the `VARIANT` so when you `Dev Container` builds it goes and pulls down the version you need.

You can also change the version of Phoenix that is install be changing `PHX_VERSION`

Happy coding!
