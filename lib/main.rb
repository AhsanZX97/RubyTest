require './lib/methods'
require './lib/MostVisits'
require './lib/MostUniqVisits'

if __FILE__ == $0
    include MyMethods
    hashFile = getHash(ARGV[0])

    mostVisits = MostVisits.new(hashFile)
    uniqVisits = MostUniqVisits.new(hashFile)
    
    # Display most visited link and then most unique visited link by descending order
    print "Most visited links : \n"
    print mostVisits.getString() + "\n"
    print "Link with most unique visitors: \n"
    print uniqVisits.getString() + "\n"

    exit 1
end