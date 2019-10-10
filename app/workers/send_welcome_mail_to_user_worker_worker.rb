class SendWelcomeMailToUserWorkerWorker
  include Sidekiq::Worker

  def perform(email)
    WelcomeMailer.send_welcome_email(email).deliver
  end
end
