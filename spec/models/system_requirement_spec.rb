require 'rails_helper'

  #COMENTÁRIO:: Esse file é gerado automaticamente com o generate de model.

RSpec.describe SystemRequirement, type: :model do
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    #COMENTÁRIO:: valida que não pode ter o mesmo nome 

    
  it { is_expected.to validate_presence_of(:name) }
    #COMENTÁRIO:: valida o campo name do model
    #ps: esses métodos são do shoulda matchers, facilitam a sintaxe
  it { is_expected.to validate_presence_of(:operational_system) }
  it { is_expected.to validate_presence_of(:processor) }
  it { is_expected.to validate_presence_of(:memory) }
  it { is_expected.to validate_presence_of(:video_board) }

end
