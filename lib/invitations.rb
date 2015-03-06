require 'csv'

class Invitations
  def initialize(csv, message)
    @csv = csv
    @message = message
  end

  def deliver
    recipients.each do |recipient|
      Mailer.invitation(recipient['name'], recipient['email'], @message).deliver
    end
  end

  private

  def recipients
    CSV.parse(@csv, headers: true).map(&:to_hash)
  end
end
