# == Schema Information
#
# Table name: proposals
#
#  id           :integer          not null, primary key
#  userId       :integer
#  title        :string
#  hkId         :integer
#  description  :text
#  customForm   :text
#  votes        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  hackathon_id :integer
#  user_id      :integer
#
# Indexes
#
#  index_proposals_on_hackathon_id  (hackathon_id)
#  index_proposals_on_user_id       (user_id)
#

require 'test_helper'

class ProposalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
