class AddFieldsToEvents < ActiveRecord::Migration[7.0]
  def change
    # takes three parameters
    add_column :events, :starts_at, :datetime
    add_column :events, :description, :text
  end
end
