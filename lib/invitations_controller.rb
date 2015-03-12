class InvitationsController < ApplicationController
  def create
    Invitations.new(
      params[:csv_file].read,
      params[:message]
    ).deliver
  end
end
