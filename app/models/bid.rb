class Bid < ApplicationRecord
  validates(:department_id, presence: true)
  
belongs_to(:auctioner, required: true, class_name: "User", foreign_key: "auctioner_id", counter_cache: :selling_bids_count)
belongs_to(:buyer, required: true, class_name: "User", foreign_key: "buyer_id", counter_cache: :buying_bids_count)
has_many(:comments, class_name: "Comment", foreign_key: "bid_id", dependent: :destroy)
has_many(:likes, class_name: "Like", foreign_key: "bid_id", dependent: :destroy)
belongs_to(:department, required: true, class_name: "Department", foreign_key: "department_id", counter_cache: true)

end
