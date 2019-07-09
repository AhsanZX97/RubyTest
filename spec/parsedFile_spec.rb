require './lib/Parser' 

describe 'File parsed' do
    before(:each) do
        @webserver = getHash('./lib/webserver.log')
    end

    it 'contains the key of /help_page/1 in the hash' do
        expect(@webserver).to have_key('/help_page/1')
    end

    it 'contains 6 keys in the hash' do
        expect(@webserver.length).to eq 6
    end
end