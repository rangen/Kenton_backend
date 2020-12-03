class DropQuestionsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :questions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
