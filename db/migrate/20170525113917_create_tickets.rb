class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
