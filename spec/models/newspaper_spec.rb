require 'rails_helper'

RSpec.describe Newspaper, type: :model do
  newspaper = FactoryBot.build(:newspaper)
  describe 'dependent destroy' do
    it { expect(newspaper).to have_many_attached(:photos) }
  end
end
