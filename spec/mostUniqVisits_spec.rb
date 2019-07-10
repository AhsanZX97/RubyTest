require './lib/methods' 
require './lib/MostUniqVisits' 

describe 'Unique links visited for' do
    include MyMethods
    
    before(:each) do
        @webserver = getHash('./lib/webserver.log')
        @mostUniqs = MostUniqVisits.new(@webserver)
    end

    it '/about/2 should be 22 unique visits' do
        expect(@mostUniqs.getVisits('/about/2')).to eq 22
    end

    it '/about should be the least unique visited link' do
        expect(@mostUniqs.getLink(5)).to eq '/about'
    end
end