class Location < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name, :email, 
    :phonenumber, :Home, :Destination, :category
  acts_as_gmappable
   
    def gmaps4rails_address
      address
    end
    
    def gmaps4rails_infowindow
      "<h4>Marker created by Suppliers Friend</h4>
      <p>Supplier: #{self.name} | Address: #{self.address}</p>
      <p>Latitude: #{self.latitude} | Longitude: #{self.longitude}</p> 
      <p>Email: #{self.email} | Phonenumber: #{self.phonenumber}</p>
      <p> ID: #{self.id} | Created at: #{self.created_at} </p>
      <p> Home: #{self.Home} | Destination: #{self.Destination}</p>
      <p> Category: #{self.category} </p>
      "
      
    end

    def gmaps4rails_sidebar
      name
    end

   # def gmaps4rails_marker_picture
   # {
   # "picture" => "/assets/",
   # "width" => "50",
   # "height" => "64"
   # }
   # end

end

