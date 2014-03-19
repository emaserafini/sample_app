class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.boolean :finished

      t.timestamps
    end
  end
end
