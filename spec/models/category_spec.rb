require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  #COMENTÁRIO:: valida o campo name do model Category
  #ps: esses métodos são do shoulda matchers, facilitam a sintaxe
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  #COMENTÁRIO:: valida que não pode ter o mesmo nome 
end
