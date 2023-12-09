# == Schema Information
#
# Table name: bids
#
#  id             :integer          not null, primary key
#  auctioner_name :string
#  deadline       :date
#  description    :string
#  price          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  auctioner_id   :integer
#  department_id  :integer
#
class Bid < ApplicationRecord
  validates(:department_id, presence: true)

belongs_to(:auctioner, class_name: "User", foreign_key: "auctioner_id", counter_cache: :selling_bids_count)
has_many(:comments, class_name: "Comment", foreign_key: "bid_id", dependent: :destroy)
has_many(:likes, class_name: "Like", foreign_key: "bid_id", dependent: :destroy)
belongs_to(:department, class_name: "Department", foreign_key: "department_id", counter_cache: true)

end
