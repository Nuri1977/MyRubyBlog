class Post < ApplicationRecord
    attr_accsessories :title, :body, :category_id, :author_id
    belongs_to :category
end
