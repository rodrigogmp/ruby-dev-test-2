require 'rails_helper'

RSpec.describe Album, type: :model do
  
  it 'create album' do
    t = create(:album)
    expect(t.valid?).to be_truthy
  end

  it "should has and belongs to many players" do
    t = Album.reflect_on_association(:players)
    expect(t.macro).to eq(:has_and_belongs_to_many)
  end
end