class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :remember_token, :string
  	# It is a good idea to add index so it could be easy to pull the data out of database.
  	add_index  :users, :remember_token 
  end
end
