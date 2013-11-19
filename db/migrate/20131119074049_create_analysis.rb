class CreateAnalysis < ActiveRecord::Migration
  def change
    create_table :analysis do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
