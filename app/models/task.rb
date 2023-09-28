class Task < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validate :title, :description, :date, presence: true
end
