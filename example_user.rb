class User
  attr_accessor :first, :last, :email

  def initialize(attributes = {})
    @first = attributes[:first]
    @last = attributes[:last]
    @email = attributes[:email]
  end

  def alphabetical_name
    return @last + " , " + @first
  end

  def formatted_email
    "#{alphabetical_name.split(",").reverse} <#{@email}>"
  end
end