# == Schema Information
#
# Table name: articels
#
#  id          :bigint           not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Articel < ApplicationRecord
  # Relationship
  has_one :user
end
