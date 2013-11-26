require 'spec_helper'

describe Item do

  it "should let you set a name for an item" do
    my_item = Item.new(name: "Rails 4 Way")

    expect(Item.all.find_by(name: "Rails 4 Way").to eq(my_item)
  end

end
