# == Schema Information
#
# Table name: registrations
#
#  id         :integer          not null, primary key
#  userId     :integer
#  HkId       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Registration < ApplicationRecord
end
