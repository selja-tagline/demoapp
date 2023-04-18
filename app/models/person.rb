# class MyValidator < ActiveModel::Validator
#     def validate(record)
#       unless record.name.start_with? 'X'
#         record.errors.add :name, "Need a name starting with X please!"
#       end
#     end
# end



class Person < ApplicationRecord
    validates :name, :surname, presence: true, length: { minimum: 3 }
    validates :name, length:{ minimum: 5, message: "%{name} characters is the minimum not allowed" }
    #validates :terms_of_service, acceptance: { accept: 'yes' }
    #validates :location, confirmation: true
    #validates :name, absence: true
    # validates_each :name, :location do |record, attr, value|
    #     record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
    # end

    # validates :number, length: {is: 5}, allow_blank: false

    # include ActiveModel::Validations
    # validates_with MyValidator

    # validate do |person|
    #     errors.add :name, :too_plain, message:"it's not cool enough"
    # end
end
