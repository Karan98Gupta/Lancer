class AddReferenceOfUsers < ActiveRecord::Migration[5.0]
  def change
  	add_reference :gigs,:user,index: true
  	add_reference :proposals,:user,index: true
  end
end
