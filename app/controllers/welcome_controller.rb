class WelcomeController < ApplicationController
  before_filter :empty_client

  def index
  end

  def ahorro
  end

  def productos
  end

  def industrias
  end

  def clientes
  end

  def residencial
  end

  def residencial_como_funciona
  end

  def testimonios
  end
  
  def equipo
  end

  private
    def empty_client
      @client = Client.new
    end



end
