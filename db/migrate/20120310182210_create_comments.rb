class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.string :commenter
      t.integer :rating
      t.references :headline 

      t.timestamps
    end
  end
end
