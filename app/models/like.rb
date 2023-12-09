class Like < ApplicationRecord

belongs_to(:user, required: true, class_name: "User", foreign_key: "user_id")
belongs_to(:bid, required: true, class_name: "Bid", foreign_key: "bid_id")

end
