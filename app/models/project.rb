class Project < ApplicationRecord
  belongs_to :group
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, allow_destroy: true
end
