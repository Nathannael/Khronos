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

class Album < ApplicationRecord
  validates_presence_of :name, :release_date

  belongs_to :artist

  scope :upcoming, -> { where('release_date > ?', Date.today) }
end
