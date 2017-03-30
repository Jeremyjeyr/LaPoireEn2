# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  total      :float
#  status     :integer
#  message    :text
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  farm_id    :integer
#

class Order < ApplicationRecord

  belongs_to :farm
  belongs_to :user
  has_and_belongs_to_many :products

  enum status: [:accepted, :refused]

  #orders.refused
  #orders.cancelled

end
