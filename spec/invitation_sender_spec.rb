require 'spec_helper'

describe InvitationSender do
  describe '#send' do
    it "sends emails to all invitees in an uploaded CSV" do
      stub_mailer
      csv = <<-CSV.strip_heredoc
        email,name
        one@example.com,User One
        two@example.com,User Two
      CSV

      InvitationSender.new(csv, 'hello').deliver

      expect(Mailer).to have_received(:invitation).with(
        'User One',
        'one@example.com',
        'hello'
      )
      expect(Mailer).to have_received(:invitation).with(
        'User Two',
        'two@example.com',
        'hello'
      )
    end

    def stub_mailer
      mailer = double('mailer', deliver: true)
      allow(Mailer).to receive(:invitation).and_return(mailer)
    end
  end
end
