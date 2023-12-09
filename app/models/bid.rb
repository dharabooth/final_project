# == Schema Information
#
# Table name: bids
#
#  id            :integer          not null, primary key
#  bid_amount    :integer
#  deadline      :date
#  description   :string
#  price         :integer
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  auctioner_id  :integer
#  buyer_id      :integer
#  department_id :integer
#
class Bid < ApplicationRecord
  validates(:department_id, presence: true)
  
belongs_to(:auctioner, required: true, class_name: "User", foreign_key: "auctioner_id", counter_cache: :selling_bids_count)
belongs_to(:buyer, required: true, class_name: "User", foreign_key: "buyer_id", counter_cache: :buying_bids_count)
has_many(:comments, class_name: "Comment", foreign_key: "bid_id", dependent: :destroy)
has_many(:likes, class_name: "Like", foreign_key: "bid_id", dependent: :destroy)
belongs_to(:department, required: true, class_name: "Department", foreign_key: "department_id", counter_cache: true)

end
