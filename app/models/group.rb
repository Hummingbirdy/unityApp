class Group < ApplicationRecord
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, allow_destroy: true
  has_many :group_members, dependent: :destroy
  accepts_nested_attributes_for :group_members, allow_destroy: true
end
