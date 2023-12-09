class Department < ApplicationRecord

  has_many(:bids, class_name: "Bid", foreign_key: "department_id", dependent: :destroy)

end
