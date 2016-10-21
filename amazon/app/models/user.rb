class User < ApplicationRecord

  def self.search(first_name, last_name, email)

    # where(["first_name AND last_name AND email", "#{first_name}", "#{last_name}", "#{email}"])

    #   title ILIKE ? OR description ILIKE ?", "%#{keyword}%", "%#{keyword}%"])
    #
    where(first_name: "#{first_name}", last_name: "#{last_name}", email: "#{email}")

      # + where(["last_name", "%#{last_name}%"] ) + where(["email", "#{email}"])

# Write a class method, search, to find users whose first_name, last_name or email exactly matches a given string argument, search_term.
  end
end
