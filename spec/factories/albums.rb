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

FactoryBot.define do
  factory :album do
    name "A Thousand Suns"
    release_date "2018-02-11"
    artist_id {
      FactoryBot.create(:artist).id
    }
  end
end
