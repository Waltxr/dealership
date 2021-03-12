require 'rails_helper'

RSpec.describe Car, :type => :model do

  subject {
    described_class.new(
      make: 'Test Car',
      price: 2000
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a make" do
    subject.make = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

end
