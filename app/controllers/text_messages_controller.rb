class TextMessagesController < ApplicationController
  def new
  end

  def create
    @text_message = TextMessage.create(text_message_params)
    redirect_to :controller => 'home', :action => 'index'
  end

  private

  def text_message_params
    params.require(:text_message).permit(:content, :phone_num, :send_datetime)
  end
end