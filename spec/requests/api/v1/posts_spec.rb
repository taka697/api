require 'rails_helper'

describe 'GET /api/v1/posts/:id.json' do
  before do
    @post = FactoryBot.create(:post)
    get "/api/v1/posts/#{@post.id}.json"
  end

  it '200 OK が返ってくる' do
    # expect(response).to be_success
    expect(response.status).to eq(200)
  end
end
