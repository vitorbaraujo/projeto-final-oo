class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :type
      t.text :place
      t.datetime :date
      t.string :service
      t.string :stay_contact

      t.timestamps null: false
    end
  end
end
