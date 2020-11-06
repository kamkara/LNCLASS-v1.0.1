class AddRefToCourses < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :level, null: false, foreign_key: true, type: :uuid
    add_reference :courses, :material, null: false, foreign_key: true, type: :uuid
  end
end
