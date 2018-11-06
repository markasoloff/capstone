class User < ApplicationRecord

  has_many :user_templates
  # has_many :articles, through: :user_templates

end
