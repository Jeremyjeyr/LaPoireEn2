# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :text
#  image           :text
#  price           :float
#  unit            :string
#  available_in    :text
#  avalaible_stock :integer
#  real_stock      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  farm_id         :integer
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
