class Upload < ActiveRecord::Base
  belongs_to :user
  has_many :likings
  has_many :likers, through: :likings, source: :user

  has_attached_file :asset

  acts_as_taggable

  validates :user, presence: true

  validates_attachment_presence :asset
  do_not_validate_attachment_file_type :asset
end
