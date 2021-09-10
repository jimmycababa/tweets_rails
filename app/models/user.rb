# we can look up our users and update, delete, and add them. two levels to the user table. one is the querying of the table and interacting with all the users. and then we have an instance of a user which is a single route in my db
class User < ApplicationRecord
    # rails method. virtual attributes
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
