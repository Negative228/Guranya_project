module GuranyaHelper
    def valid_joke?(j_type)
        
        j_type.in?(['general','programming','knock-knock'])
    end

    def valid_num?(num)
        if num != nil
            num.scan(/\D/).empty?
        end
    end

    def valid_cat?(cat)
        cat = cat.capitalize() unless cat.nil?
        cat_list = Breed.all.map {|el| el.name}
        cat.in?(cat_list)
    end

end
