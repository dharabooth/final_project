# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  buying_bids_count      :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  full_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  selling_bids_count     :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many(:selling_bids, class_name: "Bid", foreign_key: "auctioner_id", dependent: :destroy)
         has_many(:buying_bids, class_name: "Bid", foreign_key: "buyer_id", dependent: :destroy)
         has_many(:comments, class_name: "Comment", foreign_key: "author_id", dependent: :destroy)
         has_many(:likes, class_name: "Like", foreign_key: "user_id", dependent: :destroy)         

end
