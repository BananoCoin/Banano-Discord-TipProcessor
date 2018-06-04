class SendWorker
  include Sidekiq::Worker
  sidekiq_options queue: :send

  def perform

  end
end
