class ClientsController < ApplicationController
  respond_to :html, :js

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
  end


  def delete
    @client = Client.find(params[:client_id])
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to action: :index
  end


  private
    def client_params
      params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :address, :city)
    end

end
