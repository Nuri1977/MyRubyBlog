ActiveAdmin.register Post do
  permit_params :title, :body, :category_id, :author_id
end
