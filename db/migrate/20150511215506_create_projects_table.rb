class CreateProjectsTable < ActiveRecord::Migration
  def change
    create_table(:projects) do |t| #t is a table
      t.column(:name, :string)
      t.column(:due_date, :datetime)

      t.timestamp()
    end
    add_column(:employees, :project_id, :integer)
  end
end
