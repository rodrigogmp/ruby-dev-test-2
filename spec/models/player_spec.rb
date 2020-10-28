require 'rails_helper'

RSpec.describe Player, type: :model do
  
  it 'create player' do
    t = create(:player)
    expect(t.valid?).to be_truthy
  end

  it "should has and belongs to many albums" do
    t = Player.reflect_on_association(:albums)
    expect(t.macro).to eq(:has_and_belongs_to_many)
  end
end
