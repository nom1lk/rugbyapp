class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.text :date
      t.text :teams
      t.text :venue
      t.text :time

      t.timestamps
    end
  end
end
