require './lib/methods' 


class MostVisits
    include MyMethods
    def initialize(hash)  
        @hash = getMostVisits(hash)
    end  

    def getMostVisits(hash)
        return Hash[hash.sort_by { |k, v| v.join.length }.reverse]
    end

    def getString()
        answer = ""
        @hash.each do |k,v|
            answer += "#{k} #{hash[k].length} visits "
        end 
        return answer
    end
end

if __FILE__ == $0
    include MyMethods
    hashFile = getHash(ARGV[0])
    mostVisits = MostVisits.new(hashFile)
    p mostVisits.getString()
    exit 1
end