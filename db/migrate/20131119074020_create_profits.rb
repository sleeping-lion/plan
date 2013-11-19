class CreateProfits < ActiveRecord::Migration
  def change
    create_table :profits do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
