class ContactsController < ApplicationController
  def index
  end
  
  def first_contact
    @first_contact = Contact.all[0]
  end

  def second_contact
    @second_contact = Contact.all[1]
  end
  
  def third_contact
    @third_contact = Contact.all[2]
  end
end
