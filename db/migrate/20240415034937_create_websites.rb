class CreateWebsites < ActiveRecord::Migration[7.1]
  def change
    create_table :websites do |t|
      t.string :name
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
