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

require 'test_helper'

class FarmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
