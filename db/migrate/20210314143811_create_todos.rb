class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :text
      t.boolean :done

      t.timestamps
    end
  end
end
