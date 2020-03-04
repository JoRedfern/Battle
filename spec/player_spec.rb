require "player"

describe Player do
  subject(:jo) { Player.new("Jo") }
  subject(:cat) { Player.new("Cat") }

  describe "#name" do
    it "returns the name" do
      expect(jo.name).to eq "Jo"
    end
    end

    describe "#hit-points" do
      it "returns the hit points" do
        expect(jo.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    describe "#attack" do
      it "damages the player" do
        expect(cat).to receive(:receive_damage)
        jo.attack(cat)
      end
    end

describe "#receive_damage" do
  it "reduces the player hit points" do
    expect { cat.receive_damage }.to change { cat.hit_points }.by(-10)
  end
end
end
