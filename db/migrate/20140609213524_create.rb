class Create < ActiveRecord::Migration
  def change
    create_table :text_messages do |t|
      t.string :content
      t.string :phone_num
      t.datetime :send_datetime
      t.boolean :send_attempted, default: false
    end
  end
end
