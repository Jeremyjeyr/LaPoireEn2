# == Schema Information
#
# Table name: farms
#
#  id               :integer          not null, primary key
#  address          :string
#  title            :string
#  phone            :string
#  background_image :string
#  description      :text
#  open_hours       :text
#  orders_days      :text
#  delivery_days    :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Farm < ApplicationRecord

  has_many :products

  #address text
  #postalcode / zipcode string
  #city string

end
