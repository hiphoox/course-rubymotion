class Event 

	attr_accessor :name, :address, :location

	def self.mock_event

		mock_event = Event.new
		mock_event.name = "November meeting"
		mock_event.address = "Main Street 107"    
    #meter a un hash como constante cupertino
		mock_event.location = CLLocationCoordinate2DMake( 37.334815, -122.029781 )
    mock_event
	end		

end