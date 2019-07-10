require './lib/methods' 
require './lib/mostVisits' 

describe 'Links visited for' do
    include MyMethods
    
    before(:each) do
        @webserver = getHash('./lib/webserver.log')
        @mostVisits = MostVisits.new(@webserver)
    end

    it '/contact should be 89 visits' do
        expect(@mostVisits.getVisits('/contact')).to eq 89
    end

    it '/about/2 should be the top visited link' do
        expect(@mostVisits.getLink(0)).to eq '/about/2'
    end
end