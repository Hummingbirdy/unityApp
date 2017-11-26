class Group < ApplicationRecord
  belongs_to :user
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, allow_destroy: true
  has_many :teammates, dependent: :destroy
  accepts_nested_attributes_for :teammates, allow_destroy: true
end
