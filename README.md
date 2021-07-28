# I18n With Phoenix

A basic guide teaching how to use I18n in Phoenix.

Read the article at [I18n With Phoenix](https://www.wbotelhos.com/i18n-with-phoenix).

# Setup

```sh
# clone the project
git clone git@github.com:wbotelhos/i18n-with-phoenix.git

# access the project
cd i18n-with-phoenix

# installs the dependencies
mix deps.get

# creates the database
mix ecto.setup

# installs assets
cd assets && yarn install && cd -

# run the server
mix phx.server

# open the browser
open localhost:4000
```
