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

class UserAlbum < ApplicationRecord
  belongs_to :user
  belongs_to :album
end
