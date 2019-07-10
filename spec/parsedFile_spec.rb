require './lib/methods' 

describe 'File parsed' do
    include MyMethods
    
    before(:each) do
        @webserver = getHash('./lib/webserver.log')
    end

    it 'contains the key of /help_page/1 in the hash' do
        expect(@webserver).to have_key('/help_page/1')
    end

    it 'should stop execution if file is not .log' do
        file = "./lib/test.txt"
        getHash(file).should raise_error SystemExit
    end

    it 'contains 6 keys in the hash' do
        expect(@webserver.length).to eq 6
    end
end