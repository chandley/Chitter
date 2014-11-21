require 'user'
require 'database'

describe 'User' do

  before(:each) do User.create(:name => "joe", :email => "joe@bloggs.com")
  end

  it 'should have a name' do    
    expect(User.first.name).to eq("joe")
  end

  it 'should have an email' do
    expect(User.first.email).to eq("joe@bloggs.com")   
  end


end