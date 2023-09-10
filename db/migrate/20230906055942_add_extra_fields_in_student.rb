class AddExtraFieldsInStudent < ActiveRecord::Migration[7.0]
  def change

    add_column :students, :first_name, :string 
    add_column :students, :last_name, :string
    add_column :students, :email, :string
    add_column :students, :address, :text

  end
end
