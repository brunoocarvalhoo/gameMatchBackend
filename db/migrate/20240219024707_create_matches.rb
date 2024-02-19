class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :title
      t.string :game
      t.string :date
      t.boolean :presence
      t.integer :players
      t.string :local

      t.timestamps
    end
  end
end
