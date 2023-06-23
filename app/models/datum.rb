class Datum < ApplicationRecord

    validates :email,presence: true
    validates :email, uniqueness: true
    validates :name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    

    scope :vip, -> { where(package: "V I P") }
    scope :normal, -> { where(package:  "Meet & Greet") }
    scope :local, -> {where(package: 'Local Gems')}

end
