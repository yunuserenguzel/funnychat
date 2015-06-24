require 'rails_helper'

RSpec.describe ChatController, type: :controller do

  context 'GET index' do
    it 'should render view if session is not set' do
      get :index
      expect(response).to render_template(:index)
    end
    it 'should redirect to chat if session is set' do
      get :index, nil, {username: :username}
      expect(response).to redirect_to(:chat)
    end
  end

  context 'GET chat' do
    it 'should render view if session is set' do
      get :chat,nil,{username: :username}
      expect(response).to render_template(:chat)
    end
    it 'should redirect to index if session is not set' do
      get :chat
      expect(response).to redirect_to(:index)
    end
  end

  context 'POST register' do
    before :each do
      @params = {
        username: 'username',
        dialect: 'dialect_type'
      }
    end
    it 'should set session for given parameters' do
      post :register, @params
      expect(session[:username]).to eq(@params[:username])
      expect(session[:user_dialect]).to eq(@params[:dialect])
    end
    it 'should redirect to chat' do
      post :register, @params
      expect(response).to redirect_to :chat
    end
  end

  context 'GET logout' do
    it 'should destroy session' do
      get :logout, nil, {username: :username}
      expect(session.has_key? :username).to eq(false)
    end
  end
end
