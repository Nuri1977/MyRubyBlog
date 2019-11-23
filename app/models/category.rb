class Category < ApplicationRecord
    attr_accsessories :name
    has_many :posts
end
