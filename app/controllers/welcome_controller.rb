class WelcomeController < ApplicationController
  def index
    @client = Client.new
  end

  def ahorro
    @client = Client.new
  end

  def productos
    @client = Client.new
  end

  def industrias
    @client = Client.new
  end

  def clientes
    @client = Client.new
  end

end
