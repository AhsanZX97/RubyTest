require './lib/methods' 

class MostUniqVisits
    include MyMethods

    def initialize(hash)  
        @hash = getMostUniqVisits(hash)
    end  

    def getMostUniqVisits(hash)
        uniqHash = hash.each { |k, v| hash[k] = v.uniq } 
        return Hash[uniqHash.sort_by { |k, v| v.join.length }.reverse]
    end

    def getString()
        answer = ""
        @hash.each do |k,v|
            answer += "#{k} #{hash[k].uniq.length} unique visits "
        end 
        return answer
    end
end