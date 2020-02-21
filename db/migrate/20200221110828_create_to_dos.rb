class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.text :content
      t.string :state
      t.string :string
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :to_dos, [:user_id, :created_at]
  end
end
