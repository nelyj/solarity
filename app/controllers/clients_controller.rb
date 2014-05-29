class ClientsController < ApplicationController
  respond_to :html, :js

  def index
    @clients = Client.all

    #generate excel file with results
    Axlsx::Package.new do |p|
      p.workbook.add_worksheet(:name => "Clients_subscription") do |sheet|
        sheet.add_row ["Name", "Last name ", "Email", "Phone number", "Address", "City", "Created at"]
        Client.all.each do |c|
          sheet.add_row [c.first_name, c.last_name, c.email, c.phone_number, c.address, c.city, c.created_at.in_time_zone('Santiago').strftime('%d/%m/%Y - %H:%M:%S')]
        end
      end

      p.serialize('simple.xlsx')
    end



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
