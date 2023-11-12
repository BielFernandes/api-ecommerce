FactoryBot.define do
    factory :system_requirement do
        sequence(:name) {|n| "Basic #{n}"}
        operational_system {Faker::Computer.os}
        processor {'Intel Core i3 6UGH'}
        memory {'8gb'}
        video_board {'MyString'}
    end
end