class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    #create_table method creates a table uses the t object to create name and email columns in the database
      t.string :name
      t.string :email

      t.timestamps
      #creates 2 columns called created_at and updated_at
    end
  end
end
