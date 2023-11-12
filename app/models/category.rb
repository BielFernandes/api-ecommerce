class Category < ApplicationRecord
    validates :name, presence: true, uniqueness:{ case_sensitive: false }
    #validação criada em spec/models/category_spec.rb
end
