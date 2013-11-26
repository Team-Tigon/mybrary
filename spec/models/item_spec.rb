require 'spec_helper'

describe Item do
  context "testing attributes" do
    Item.new(name:"PS2", url: "sony.com", description: "a very very old system")
  end

  
  context "testing relations" do
    before do
      @new_user = User.create(name: "Josh")
      @item = new_user.items.create(name: "PS4")
    end

    it 'is properly associated with its owner' do
      expect(@item.user).to eq(@new_user)
    end

    it 'can be borrowed by other users' do

    end
  end

  # let(:item) {Item.create(name:"RAILS 4 WaY", description:"A very good book?", url: "www.hi.com")}
  # context "Loading from Active Record DB" do

  #   it "lets you find an item by its name" do
  #     item
  #     .find_by(name: "RAILS 4 WaY")
  #   end

  # end

  context 'testing states' do 
    it 'should be loanable'
    it 'should be returnable'
    it 'should be removable'
  end

  context 'testing tags' do
  end
end

# describe Vehicle do

#   before :each do
#     @vehicle = Factory(:vehicle)
#   end

#   describe 'states' do
#     describe ':parked' do
#       it 'should be an initial state' do
#         # Check for @vehicle.parked? to be true
#         @vehicle.should be_parked
#       end

#       it 'should change to :idling on :ignite' do
#         @vehicle.ignite!
#         @vehicle.should be_idling
#       end

#       ['shift_up!', 'shift_down!'].each do |action|
#         it "should raise an error for #{action}" do
#           lambda {@job_offer.send(action)}.should raise_error
#         end
#       end
#     end
#   end
# end
