class HomeController < ApplicationController
  def index
    @text_message = TextMessage.new
  end
end