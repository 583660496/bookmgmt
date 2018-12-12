class AddAasmStateToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :aasm_state, :string, default: 'borrow_required'
    add_index :orders, :aasm_state
  end
end
