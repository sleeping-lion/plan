class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, :null=>false, :limit=>60
      t.integer :percentage
      t.string :domain
      t.text :content
      t.timestamps
    end
  end
end
