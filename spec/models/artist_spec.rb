# == Schema Information
#
# Table name: artists
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Artist, type: :model do
  it { is_expected.to validate_presence_of :name }

  it { is_expected.to have_many :albums }
end
