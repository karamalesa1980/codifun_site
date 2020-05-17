class CreateUserForms < ActiveRecord::Migration[6.0]
  def change
    create_table :user_forms do |t|
      t.string   :first_name
      t.string   :last_name
      t.datetime :date
      t.string   :country
      t.boolean  :html
      t.boolean  :css
      t.boolean  :ruby
      t.boolean  :php
      t.boolean  :javascript
      t.string   :email
      t.string   :password
      t.string   :answer
      t.string   :description

 
      t.timestamps
    end
  end
end
