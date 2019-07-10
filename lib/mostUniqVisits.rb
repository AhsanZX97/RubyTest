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

if __FILE__ == $0
    include MyMethods
    hashFile = getHash(ARGV[0])
    uniqVisits = MostUniqVisits.new(hashFile)
    p uniqVisits.getString()
    exit 1
end