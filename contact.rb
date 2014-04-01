class Contact
	@@counter = 0
  
  attr_accessor :first_name, :last_name, :email, :note, :id

	def initialize(first_name, last_name, email, note)
		@id = Contact.get_id
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end 
	
	def self.get_id
		@@counter += 1
		@@counter
  end

  # overwrite to_s to display
  def to_s
  	"ID: #{@id}\nFirst Name: #{@first_name}\nLast Name: #{@last_name}\nEmail: #{@email}\nNotes: #{@note}"
  end
end