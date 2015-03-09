require 'csv'

class InvitationSender
  def initialize(parser, message)
    @message = message
    @parser = parser
  end

  def deliver
    recipients.each do |recipient|
      Mailer.invitation(
        recipient['name'],
        recipient['email'],
        @message
      ).deliver
    end
  end

  private

  def recipients
    @parser.recipients
  end
end
