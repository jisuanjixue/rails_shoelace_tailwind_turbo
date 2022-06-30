require "rails_helper"

RSpec.describe Quote, type: :model do
  let(:quote) { build(:quote) }
  # subject {
  #   described_class.new(name: "Anything", created_at: DateTime.now, updated_at: DateTime.now + 1.week, id: 1)
  # }

  it "initializes quote with name" do
    # expect(quote.name).to be_kind_of(String)
    expect(quote.name).to quote.name
  end

  it "is valid with valid attributes" do
    expect(quote).to be_valid
  end

  it "is not valid without a name" do
    quote.name = nil
    expect(quote.name).not_to be_valid
  end
end
