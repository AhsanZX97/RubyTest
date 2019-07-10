require './lib/methods' 
require './lib/mostUniqVisits' 

describe 'Most Unique Page Visits' do
    include MyMethods
    
    before(:each) do
        @webserver = getHash('./lib/webserver.log')
        @mostUniqs = MostUniqVisits.new(@webserver)
    end

    it 'expect /about/2 to be 22 unique visits' do
        expect(@mostUniqs.getVisits('/about/2')).to eq 22
    end

    it 'expect the least unique visited links to be /about' do
        expect(@mostUniqs.getLink(5)).to eq '/about'
    end
end