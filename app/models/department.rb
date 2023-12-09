# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  bids_count :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Department < ApplicationRecord

  has_many(:bids, class_name: "Bid", foreign_key: "department_id", dependent: :destroy)

end
