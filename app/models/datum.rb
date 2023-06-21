class Datum < ApplicationRecord

    validates :email,presence: true
    validates :name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
end
