# frozen_string_literal: true

# This file contains app data for seeding purposes
# load Rails.root.join('db/seeds/*.rb') ; AppSeeds::ClassName.seed

module AppSeeds
  class Users
    class << self
      def seed
        users_attrs = [
          {
            first_name: 'First Test',
            last_name: 'User',
            email: 'user1@example.com'
          },
          {
            first_name: 'Second Test',
            last_name: 'User',
            email: 'user2@example.com'
          }
        ]

        users_attrs.each do |user_attr|
          next unless User.find_by(email: user_attr[:email]).nil?

          u = User.new(user_attr)
          u.password = 'password'
          u.save
          Rails.logger.debug { "User #{u.email} created" }
        end
      end
    end
  end
end
