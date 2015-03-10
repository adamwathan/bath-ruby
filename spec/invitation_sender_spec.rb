require 'spec_helper'

describe InvitationSender do
  describe '#send' do
    it "sends emails to all invitees in an uploaded CSV" do
      stub_mailer
      recipients = [
        { 'name' => 'User One', 'email' => 'one@example.com' },
        { 'name' => 'User Two', 'email' => 'two@example.com' }
      ]
      parser = double('parser', recipients: recipients)

      InvitationSender.new(parser, 'hello').deliver

      expect(Mailer).to(
        have_received(:invitation).with(
          'User One',
          'one@example.com',
          'hello'
        )
      )
      expect(Mailer).to(
        have_received(:invitation).with(
          'User Two',
          'two@example.com',
          'hello'
        )
      )
    end

    def stub_mailer
      mailer = double('mailer', deliver: true)
      allow(Mailer).to(
        receive(:invitation).
        and_return(mailer)
      )
    end
  end
end
