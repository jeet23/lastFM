class List < ActiveRecord::Base
  belongs_to :member
  belongs_to :song

  has_many :timetable

  validates :member_id, uniqueness: { scope: [:song_id]}
end
