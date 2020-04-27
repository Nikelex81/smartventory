# Our CLI Controller 
class Smartventory::CLI 

    def call 
        puts "Welcome to SmartVentory! The new way to ventor."
        puts Smartventory::ApiManager.get_info
        
    end 
    
    def at_a_glance
        #puts <<-DOC.gsub /^\s*/, ''
        #1. 
        #DOC
    end
    
    def category(name)
        @name = name
    end 


    
    def menu
       puts "Enter a number of category you want to serch from"
       input = get.strip
        case input 
        when "1"
            puts "More options on that category"
        end
    end
end 