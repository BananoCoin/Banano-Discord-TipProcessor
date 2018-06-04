require "nano_rpc"

module RPCConnection
  def banano
    @node ||= NanoRpc::Node.new(
      host: ENV.fetch('NODE_HOST'),
      port: ENV.fetch('NODE_PORT')
    )
  end
end
