class ChangeAddressToCity < ActiveRecord::Migration
  def change
    rename_column :contacts, :address, :city
  end
end
