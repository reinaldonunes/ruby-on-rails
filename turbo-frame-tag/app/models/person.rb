class Person < ApplicationRecord
    has_many :awards
    has_many :credits
end
