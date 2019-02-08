class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :overall
      t.integer :difficulty
      t.integer :intrigue
      t.integer :recommendation
      t.text :content
      t.belongs_to :student, foreign_key: true
      t.belongs_to :klass, foreign_key: true

      t.timestamps
    end
  end
end
