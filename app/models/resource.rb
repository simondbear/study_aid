# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  url         :text
#  content     :text
#  subject_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Resource < ActiveRecord::Base
  belongs_to :subject
end
