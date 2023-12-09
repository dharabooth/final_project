# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  bid_id     :integer
#
class Comment < ApplicationRecord

belongs_to(:user, required: true, class_name: "User", foreign_key: "author_id")
belongs_to(:bid, required: true, class_name: "Bid", foreign_key: "bid_id")

end
