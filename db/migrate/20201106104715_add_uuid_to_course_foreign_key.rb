class AddUuidToCourseForeignKey < ActiveRecord::Migration[6.0]

  #Users
   def up
    add_column :users, :uuid, :uuid, default: "gen_random_uuid()", null: false
    rename_column :users, :id, :integer_id
    rename_column :users, :uuid, :id
    execute "ALTER TABLE users drop constraint users_pkey;"
    execute "ALTER TABLE users ADD PRIMARY KEY (id);"

    # Optinally you remove auto-incremented
    # default value for integer_id column
    execute "ALTER TABLE ONLY users ALTER COLUMN integer_id DROP DEFAULT;"
    change_column_null :users, :integer_id, true
    execute "DROP SEQUENCE IF EXISTS users_id_seq"
  end
  #course
   def up
    add_column :courses, :uuid, :uuid, default: "gen_random_uuid()", null: false
    rename_column :courses, :id, :integer_id
    rename_column :courses, :uuid, :id
    execute "ALTER TABLE courses drop constraint courses_pkey;"
    execute "ALTER TABLE courses ADD PRIMARY KEY (id);"

    # Optinally you remove auto-incremented
    # default value for integer_id column
    execute "ALTER TABLE ONLY courses ALTER COLUMN integer_id DROP DEFAULT;"
    change_column_null :courses, :integer_id, true
    execute "DROP SEQUENCE IF EXISTS courses_id_seq"
  end
  #materials
   def up
    add_column :materials, :uuid, :uuid, default: "gen_random_uuid()", null: false
    rename_column :materials, :id, :integer_id
    rename_column :materials, :uuid, :id
    execute "ALTER TABLE materials drop constraint materials_pkey;"
    execute "ALTER TABLE materials ADD PRIMARY KEY (id);"

    # Optinally you remove auto-incremented
    # default value for integer_id column
    execute "ALTER TABLE ONLY materials ALTER COLUMN integer_id DROP DEFAULT;"
    change_column_null :materials, :integer_id, true
    execute "DROP SEQUENCE IF EXISTS materials_id_seq"
  end
  #levels
  def up
    add_column :levels, :uuid, :uuid, default: "gen_random_uuid()", null: false
    rename_column :levels, :id, :integer_id
    rename_column :levels, :uuid, :id
    execute "ALTER TABLE levels drop constraint levels_pkey;"
    execute "ALTER TABLE levels ADD PRIMARY KEY (id);"

    # Optinally you remove auto-incremented
    # default value for integer_id column
    execute "ALTER TABLE ONLY levels ALTER COLUMN integer_id DROP DEFAULT;"
    change_column_null :levels, :integer_id, true
    execute "DROP SEQUENCE IF EXISTS levels_id_seq"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
