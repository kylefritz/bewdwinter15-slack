class ChannelsController < ApplicationController
  def index
  end

  def show
    @channel = Channel.find(params[:id])
  end
end
