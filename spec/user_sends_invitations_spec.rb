require "spec_helper"

describe "User sends invitations" do
  it "succeeds" do
    InvitationsController.new.create
  end
end
