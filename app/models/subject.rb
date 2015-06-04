# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :text
#

class Subject < ActiveRecord::Base
  has_many :exercises
  has_many :resources
end




