class UpdateEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :days, :string
  end
end
