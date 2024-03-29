module MyMethods

    def getLink(num)
        return @hash.keys[num]
    end

    def getVisits(key)
        return @hash[key].length
    end

    def hash
        return @hash
    end

    def getHash(file)

        accepted_formats = [".log"]
        if file == nil || accepted_formats.include?(File.extname(file)) == false
            print "Please enter a log file as an argument"
            exit 1
        end

        hash = Hash.new{|hsh,key| hsh[key] = [] }
        File.open(file, "r") do |wholetext|
            wholetext.each_line do |line|
                key, value = line.chomp.split(" ")
                hash[key].push value
            end
        end
        return hash
    end

end