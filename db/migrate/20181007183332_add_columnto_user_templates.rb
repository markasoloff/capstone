class AddColumntoUserTemplates < ActiveRecord::Migration[5.2]
  def change
    add_column :user_templates, :target, :string
    add_column :user_templates, :new_content, :string
    add_column :user_templates, :rule, :string
  end
end
