class CreateOrders2 < ActiveRecord::Migration[5.1]
  def change
    create_table :orders2s do |t|
   
    	t.string :name
    	t.references :user
    	
    	t.timestamps
    end
  end
end
