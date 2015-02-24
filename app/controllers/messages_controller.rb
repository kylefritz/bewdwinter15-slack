class MessagesController < ApplicationController
  def create
    channel = Channel.find(params[:channel_id])
    user = User.find(session[:user_id])

    channel.messages.create(user: user, content: params[:content])

    redirect_to channel_path(channel)
  end
end
