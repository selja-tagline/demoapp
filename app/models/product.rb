class Product < ApplicationRecord
    # include ActiveModel::Validations
    # include ActiveModel::Validations::Callbacks

    # attr_accessor :name, :price
    validates :name, :price, presence: true
    validates_length_of :name, maximum: 10

    # before_validation :remove_whitespaces

    # private

    # def remove_whitespaces
    #     name.strip!
    # end
end
