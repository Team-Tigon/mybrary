class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :items
  has_many :loans
  has_many :borrowed_items, through: :loans, source: "item"

  def name
    "#{firstname.capitalize} #{lastname.capitalize}"
  end


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

  def mark_returned(item)
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
    self.loans.where(returned_on: nil)
  end

end


