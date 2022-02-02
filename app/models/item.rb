class Item < ApplicationRecord
  # model association
  belongs_to :todo

  # validations
  validates_presence_of :name
  validates_inclusion_of :done, in: [true, false], message: 'can\'t be blank'
end