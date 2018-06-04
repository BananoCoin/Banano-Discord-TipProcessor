require_relative "../lib/rpc_connection"

class SendWorker
  include RPCConnection
  include Sidekiq::Worker
  sidekiq_options queue: :send, retry: ENV.fetch('MAX_TX_RETRIES', 3)

  def perform(id, source, destination, amount)
    tx = banano.(:send, {
      wallet: ENV.fetch('NODE_WALLET'),
      source: source,
      destination: destination,
      amount: amount.to_i,
      id: id
    })

    unless tx.block.nil?
      # update db
    end
  end
end
