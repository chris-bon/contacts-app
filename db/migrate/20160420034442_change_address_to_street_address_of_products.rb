class ChangeAddressToStreetAddressOfProducts < ActiveRecord::Migration
  def change
    rename_column :contacts, :address, :street_address
  end
end
