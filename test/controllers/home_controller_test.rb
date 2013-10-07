require 'test_helper'

describe HomeController do
  it 'renders #index' do
    get :index
    assert response.success?
  end
end