class CriaUfs < ActiveRecord::Migration
	def change
    	create_table :ufs do |t|
      		t.timestamps
      		t.string :nome, limit:2
      	end
    end
end
