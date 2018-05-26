# frozen_string_literal: true

class DeviseCreateAdmins < ActiveRecord::Migration[5.1]
  def self.up
     create_table(:admins) do |t|
       t.string :email,              :null => false, :default => ""
       t.string :encrypted_password, :null => false, :default => ""
       t.integer  :sign_in_count, :default => 0
       t.datetime :current_sign_in_at
       t.datetime :last_sign_in_at
       t.string   :current_sign_in_ip
       t.string   :last_sign_in_ip
       t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
       t.string   :unlock_token # Only if unlock strategy is :email or :both
       t.datetime :locked_at
       t.timestamps
     end
   end

   def self.down
     # By default, we don't want to make any assumption about how to roll back a migration when your
     # model already existed. Please edit below which fields you would like to remove in this migration.
     raise ActiveRecord::IrreversibleMigration
   end
end
