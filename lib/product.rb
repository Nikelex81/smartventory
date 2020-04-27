
class Smartventory::Product
    #attr_accessor :item, :type, :category
    attr_reader :country

    @@all = []

    def self.mass_create_from_api(array)
        array.each do |arr|
            new(arr[:country])
        end
    end
    
    def initialize(country)
        @country = country 
        save
    end

    def self.all 
        @@all  
    end 

    def save
        @@all << self
    end 

    def self.destroy_all
        @@all.clear
    end 

end
    

