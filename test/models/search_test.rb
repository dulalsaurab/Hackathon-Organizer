# == Schema Information
#
# Table name: searches
#
#  id                     :integer          not null, primary key
#  keywords               :string
#  topic                  :string
#  owner                  :integer
#  number_of_participants :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class SearchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
