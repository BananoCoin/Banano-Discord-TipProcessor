# BananoBot++ Tip Processor

Processes tips created via the BananoBot++ discord bot. This separates out the logic that communicates with the Banano node so tips can be processed faster.

## Install

First, you need Ruby. Sorry. [Installing with rvm](https://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv) is pretty simple though. We're using Ruby 2.5.

Then run:

```
gem install bundler
gem install foreman
bundle install
```

## Running

You need to set a couple of environment variables. You can either create a `.env` file in the project root or load them in elsewhere.

* `NODE_HOST`: address for the Banano node RPC
* `NODE_PORT`: port for the Banano node RPC
* `MAX_TX_RETRIES`: how many times we'll attempt to send a transaction (optional; default 3)

Then you can run `foreman start` to fire up both the worker and the web monitoring UI for Sidekiq.
