describe 'Most Page Visits' do
    before(:each) do
        @webserver = getHash('./lib/webserver.log')
        @mostVisits = mostVisits.new(@webserver)
    end

    it 'expect /contact to be 89 visits' do
        expect(@mostVisits.getVisits('/contact')).to eq 89
    end

    it 'expect the most visited link to be /about/2' do
        expect(@mostVisits.getLink(0)).to eq '/about/2'
    end
end