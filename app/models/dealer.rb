class Dealer < ActiveRecord::Base

  has_one :profile, as: :profileable

end
