class CreateUserTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :user_templates do |t|

      t.timestamps
    end
  end
end
