class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :items
  has_many :loans
  has_many :borrowed_items, through: :loans, source: "item"

  # def name
  #   "#{firstname.capitalize} #{lastname.capitalize}"
  # end


  def request_loan(item)
    self.loans.create(:item_id => item.id)
    item.request_event
  end

  def approve_loan(item)
    item.loans.last.update(:borrowed_on => Time.now)
    item.loan_event
  end

  def deny_loan(item)
    item.loans.last.destroy
    item.deny_event
  end

  def return_loan(item)
    item.loans.last.update(:returned_on => Time.now)
    item.return_event
  end


  def my_available_items
    self.items.where(state: "available")
  end

  def my_requested_items
    self.items.where(state: "requested")
  end

  def my_loaned_items
    self.items.where(state: "borrowed")
  end

  def currently_borrowing
    self.loans.where(returned_on: nil).where.not(borrowed_on: nil)
  end

  def currently_requesting
    self.loans.where(borrowed_on: nil)
  end


  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def group_membership(group)
    self.memberships.where(:group_id => group.id).last
  end

  def group_member?(group)
    self.groups.include?(group) && self.group_membership(group).state != "pending"
  end

  def group_admin?(group)
    self.groups.include?(group) && self.group_membership(group).state == "admin" || self.group_membership(group).state == "owner"
  end


  def available_to_borrow
    # Get group ids
    # Get users who belong to groups with those ids
    # Get items of those users
    group_ids = self.groups.collect(&:id)
    item_list = []
    Group.where("id IN (?)", group_ids).includes(:users).each do |group|
      group.users.each do |user|
        item_list << user.items.where(state: "available") if user != self
      end
    end
    item_list.flatten.uniq
  end
  
end


