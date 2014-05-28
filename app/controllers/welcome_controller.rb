class WelcomeController < ApplicationController
  def index
    @client = Client.new
  end
end
