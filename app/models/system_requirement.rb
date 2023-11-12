class SystemRequirement < ApplicationRecord

    #validação criada em spec/models/system_requirement.rb

    validates :name, presence: true, uniqueness:{ case_sensitive: false }
    #define que o campo name é único(nao vai se repetir) e case_sensitive
    validates :operational_system, presence: true
    validates :processor, presence: true
    validates :memory, presence: true
    validates :video_board, presence: true
end
