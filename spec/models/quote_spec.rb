require "rails_helper"

RSpec.describe Quote, type: :model do
  subject {
    described_class.new(name: "Anything", created_at: DateTime.now, updated_at: DateTime.now + 1.week, id: 1)
  }

  it "is valid with valid attributes" do
    expect(subject(:quote)).to be_valid
  end

  it "is not valid without a name" do
    subject(:quote).name = nil
    expect(subject(:quote)).not_to be_valid
  end
end
