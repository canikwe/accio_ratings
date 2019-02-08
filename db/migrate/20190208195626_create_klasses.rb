class CreateKlasses < ActiveRecord::Migration[5.2]
  def change
    create_table :klasses do |t|
      t.integer :year
      t.belongs_to :subject, foreign_key: true
      t.belongs_to :instructor, foreign_key: true

      t.timestamps
    end
  end
end
