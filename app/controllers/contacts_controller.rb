class ContactsController < ApplicationController
  def create
    Contact.new(name: params[:name], address: params[:address],
        phone_number: params[:phone_number]).save
    redirect_to "/contacts/#{contact.id}"
    flash[:success] = 'New Contact Created!'
  end

  def show
    @contact = Contact.find_by id: params[:id]
  end

  def edit
    @contact = Contact.find_by id: params[:id]
  end

  def update
    @contact = Contact.find_by id: params[:id]
    @contact.update name: params[:name],
                 address: params[:address],
            phone_number: params[:phone_number]
    redirect_to "/contacts/#{@contact.id}"
    flash[:info] = 'Contact Updated!'
  end

  def destroy
    Contact.find_by(id: params[:id]).destroy
    redirect_to '/'
    flash[:danger] = 'Contact Deleted!'
  end
end
