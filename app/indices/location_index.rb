ThinkingSphinx::Index.define :location, :with => :active_record do

    set_property :utf8? => true

    # fields
    # attributes
      # define_index do
    indexes :name, :sortable => true
      
    # has id, :as => :location_id # id didn't work without :as aliasing
    # has geocoding.geocode(:id), :as => :geocode_id

    has 'RADIANS(lat)', :as => :latitude, :type => :float
    has 'RADIANS(lng)', :as => :longitude, :type => :float

end

