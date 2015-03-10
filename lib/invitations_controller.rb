class InvitationsController < ApplicationController
  def create
    InvitationSender.new(
      params[:csv_file].read,
      params[:message]
    ).deliver
  end
end
