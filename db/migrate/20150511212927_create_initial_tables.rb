class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table(:employees) do |table|
      table.column(:name, :string)
      table.column(:division_id, :integer)

      table.timestamps
    end

    create_table(:divisions) do |table|
      table.column(:name, :string)

      table.timestamps
    end
  end
end
