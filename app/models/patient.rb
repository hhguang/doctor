class Patient < ApplicationRecord
  has_many :diagnoses, dependent: :destroy
end
