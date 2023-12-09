# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bid_id     :integer
#  user_id    :integer
#
class Like < ApplicationRecord

belongs_to(:user, required: true, class_name: "User", foreign_key: "user_id")
belongs_to(:bid, required: true, class_name: "Bid", foreign_key: "bid_id")

end
