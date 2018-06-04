class ReceiveWorker
  include Sidekiq::Worker
  sidekiq_options queue: :receive

  def perform

  end
end
