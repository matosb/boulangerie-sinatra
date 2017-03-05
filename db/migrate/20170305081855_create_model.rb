class CreateModel < ActiveRecord::Migration[5.0]

  def up
  	create_table :models do |t|
  		t.string :prenom
  		t.string :nom
  		t.string :notel
  	end
  end

  def down
  	drop_table :models
  end

end
