# == Schema Information
#
# Table name: albums
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  release_date :date
#  artist_id    :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Album, type: :model do
  it { is_expected.to validate_presence_of :name  }
  it { is_expected.to validate_presence_of :release_date  }

  it { is_expected.to belong_to :artist  }
end
