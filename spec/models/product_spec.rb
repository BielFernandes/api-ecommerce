require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  #COMENTÁRIO:: valida que não pode ter o mesmo nome 
  it { is_expected.to validate_presence_of(:name) }
  #COMENTÁRIO:: valida o campo name do model Product
  #ps: esses métodos são do shoulda matchers, facilitam a sintaxe
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }
  #COMENTÁRIO:: o campo price precisa ser maior que 0
  it { is_expected.to belong_to :productable}
end
