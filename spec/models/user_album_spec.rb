# == Schema Information
#
# Table name: user_albums
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  album_id   :bigint(8)
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe UserAlbum, type: :model do
  it { is_expected.to belong_to :user  }
  it { is_expected.to belong_to :album }
end
