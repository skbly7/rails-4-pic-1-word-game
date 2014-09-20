class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
		t.string :username
		t.string :email
		t.string :password
		t.integer :highest1
		t.integer :highest2
		t.integer :highest3
		t.integer :facebook
		t.timestamps
    end
  end
end