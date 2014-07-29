require 'rails_helper'

describe Categorization do
  it 'validates the presence of a category' do
    kitten = create_kitten
      categorization = Categorization.new(
      category_id: 3,
      kitten_id: kitten.id
    )

    expect(categorization).to be_valid

    categorization.category_id = nil
    expect(categorization).to_not be_valid
  end
end

