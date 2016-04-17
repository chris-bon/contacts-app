class ContactsController < ApplicationController
  def index
  end

  def new
  end

  def create
    Contact.new(name: params[:name], 
             address: params[:address],
        phone_number: params[:phone_number]).save
  end

  def show
    @contact = Contact.find_by id: params[:id]
  end

  def edit
    @contact = Contact.find_by id: params[:id]
  end

  def update
    Contact.find_by(id: params[:id]).update(name: params[:name],
                                         address: params[:address],
                                    phone_number: params[:phone_number])
  end
end
