# frozen_string_literal: true

class AddUserIdGroups < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    add_reference :groups, :user, index: { algorithm: :concurrently }
  end
end
