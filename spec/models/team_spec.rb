require_relative '../rails_helper'

describe Team do
  let(:team) { Team.new(name: 'Steelers', city: 'Pittsburgh') }

  context 'validations' do
    let(:invalid_team) { Team.new }

    it 'is valid with a name and a city' do
      expect(team).to be_valid
    end

    it 'is invalid without a name' do
      invalid_team.valid?
      expect(invalid_team.errors.full_messages).to include("Name can't be blank")
    end

    it 'is invaild without a city' do
      invalid_team.valid?
      expect(invalid_team.errors.full_messages).to include("City can't be blank")
    end
  end

  context 'instance methods' do
    it 'should have a description' do
      expect(team.description).to eq("Pittsburgh Steelers")
    end
  end

  context 'looking up teams' do

    let(:cleveland_browns)    { Team.create(name: 'Browns', city: 'Cleveland') }
    let(:philadelphia_eagles) { Team.create(name: 'Eagles', city: 'Philadelphia') }
    let(:baltimore_ravens)    { Team.create(name: 'Ravens', city: 'Baltimore') }
    let(:ny_jets)           {  Team.create(name: 'Jets', city: 'New York') }

    # before do
    #   Team.create(name: 'Jets', city: 'New York')
    # end

    it 'should have an alphabetical list of teams by city' do
      expect(Team.alphabetical_by_city).to eq([baltimore_ravens, cleveland_browns, ny_jets, philadelphia_eagles])
    end
  end

end
