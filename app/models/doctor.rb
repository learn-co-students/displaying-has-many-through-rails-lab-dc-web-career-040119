class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  def number_of_patients
    self.patients.count
  end
end
