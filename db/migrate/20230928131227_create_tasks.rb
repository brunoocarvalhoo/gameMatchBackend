class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table "tasks", force: :cascade do |t|
      t.string "title", null: false
      t.string "description", null: false
      t.date "date", null: false
      t.boolean "completed"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end

