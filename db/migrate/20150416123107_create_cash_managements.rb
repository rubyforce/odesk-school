class CreateCashManagements < ActiveRecord::Migration
  def change
    create_table :cash_managements do |t|
      t.string  :cash_opening
      t.string  :cash_paid
      t.string  :cash_in_hand
      t.string  :cash_deposited
      t.string  :cash_moved
      t.string  :cash_closing
      t.string  :remark
      t.string  :expense_made  
      t.string  :nature_expense
      t.string  :payment
      t.string  :authorized_by
      t.decimal :amount
      t.string  :expense_by
      t.string  :month
      t.string  :year

      t.timestamps null: false
    end
  end
end
