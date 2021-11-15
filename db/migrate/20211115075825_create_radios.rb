class CreateRadios < ActiveRecord::Migration[5.2]
  def change
    create_table :radios do |t|
      t.string :title
      t.string :url
      t.string :text

      t.timestamps
    end
  end
end
