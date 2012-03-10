class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.string :title
      t.date :date
      t.text :description
      t.text :link

      t.timestamps
    end
  end
end
