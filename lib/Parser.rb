def getHash(file)
    hash = Hash.new{|hsh,key| hsh[key] = [] }
    File.open(file, "r") do |wholetext|
        wholetext.each_line do |line|
            key, value = line.chomp.split(" ")
            hash[key].push value
        end
    end
    return hash
end