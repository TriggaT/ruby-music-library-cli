module Concerns 




   
   
   
    module Findable

        def create(name)
            self.new(name)
        end 
    
        def find_by_name(name)
            self.all.detect {|ag| ag.name == name}
        end 
    
        def find_or_create_by_name(name) 
            find_by_name(name) || create(name)
        end 
    
    
    end 





end 
