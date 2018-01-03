# Setup

To run the Repconnex website locally, you'll need to first set up your environment.

## IDE

You can use whatever IDE you'd like to use. Here are a few of the common ones:

Sublime
RubyMine
Atom
jEdit
VIM
Aptana

## Install ruby

```shell
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

$ \curl -sSL https://get.rvm.io | bash -s stable
```

The best tool to install ruby is RVM. You can find it on <a href='http://rvm.io/'>rvm.io</a>.

## Install postgres

```shell
$ brew install postgres
```

Repconnex uses a postgres database.

## Create the development database

```shell
$ createdb repconnex_development
```

Create the expected development database.

## Modify your hosts file

```shell
$ vim /etc/hosts
```

> Then add the following lines:

```shell
127.0.0.1 dev.repconnex.com
127.0.0.1 devadmin.repconnex.com
```

Each system is different, but you'll need to modify your hosts file to point both dev.repconnex.com and devadmin.repconnex.com to localhost.

## Install git

```shell
$ brew install git
```

The Repconnex website source code is stored on github. You'll need to install git to access it.


## Clone the git repo

```shell
$ git clone git@github.com:repconnex/repconnex.git
```

Clone the github repository locally. 

## Install all the gems

```shell
$ bundle install
```

## Copy the production database

```shell
$ ruby copy_db.rb
```

Copy the production datbase down to development.

## Run the rails server

```shell
$ rails s
```

This will start the web server on port 3000. You should be able to view the site at <a href='http://dev.repconnex.com:3000'>http://dev.repconnex.com:3000</a>.
