# == Schema Information
#
# Table name: exercises
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  difficulty  :integer
#  subject_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Exercise < ActiveRecord::Base
  belongs_to :subject
end
