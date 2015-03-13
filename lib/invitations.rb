class Invitations
  def initialize(csv, message)
    @message = message
    @parser = Parser.new(csv)
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
