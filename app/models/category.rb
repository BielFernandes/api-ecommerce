class Category < ApplicationRecord
    validates :name, presence: true, uniqueness:{ case_sensitive: false }
    #define que o campo name é único(nao vai se repetir) e case_sensitive
    #validação criada em spec/models/category_spec.rb
end
