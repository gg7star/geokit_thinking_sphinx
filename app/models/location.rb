class Location < ApplicationRecord
  acts_as_mappable :default_units => :miles,
                 :default_formula => :sphere,
                 :distance_field_name => :distance,
                 :lat_column_name => :lat,
                 :lng_column_name => :lng
  # define_index do
  #     indexes :name, :sortable => true
      
  #     has 'RADIANS(lat)',  :as => :latitude,  :type => :float
  #     has 'RADIANS(lng)', :as => :longitude, :type => :float
  # end
  def search params
    puts params
    ls = Location.within(params[:distance], :origin => [params[:la], params[:lg]])
  end
end
