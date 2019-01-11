class CreateSimpleDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :simple_diaries do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
