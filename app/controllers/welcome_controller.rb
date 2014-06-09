class WelcomeController < ApplicationController
  def index
    @client = Client.new
  end

  def ahorro
    @client = Client.new
  end

end
