require 'rails_helper'
require 'websocket_rails/spec_helpers'

RSpec.describe 'Websocket Controllers' do

  describe 'ChatEventController' do

    context 'create_message' do
      before :each do
        allow(DialectTranslator).to receive(:translate).and_return('text')
        class ChatEventController
          def session
            {username: 'test-user', user_dialect: DialectType::Yoda}
          end
        end
      end

      it 'should be triggered from create message event' do
        expect(create_event(:create_message,'message').dispatch).to trigger_success_message
      end

      it 'should translate the message with the translator of user dialect' do
        expect(DialectTranslator).to receive(:translate).with(DialectType::Yoda, 'text')
        create_event(:create_message, 'text').dispatch
      end

      it 'should trigger new message' do
        expect_any_instance_of(ChatEventController).to receive(:new_message)
        create_event(:create_message, 'text').dispatch
      end
    end

    context 'client connected' do
      it 'should store session to controller store' do
        controller_store = {active_users:[]}
        class ChatEventController
          def session; {username:'test-user',user_dialect: DialectType::Yoda} end
        end
        allow_any_instance_of(ChatEventController).to receive(:controller_store).and_return(controller_store)
        create_event(:client_connected,nil).dispatch
        expect(controller_store[:active_users].include? ChatEventController.new.session).to eq(true)
      end
    end

    context 'delete user' do
      before :each do
        @controller_store = {active_users:[]}
        class ChatEventController
          def session; {username:'test-user',user_dialect: DialectType::Yoda} end
        end
        @controller_store[:active_users] << ChatEventController.new.session
        allow_any_instance_of(ChatEventController).to receive(:controller_store).and_return(@controller_store)
        allow_any_instance_of(ChatEventController).to receive(:active_users).and_return(nil)
      end
      it 'should remove user from the session' do
        create_event(:client_disconnected,nil).dispatch
        expect(@controller_store[:active_users].count).to eq(0)
      end
      it 'should call active users' do
        expect_any_instance_of(ChatEventController).to receive(:active_users)
        create_event(:client_disconnected,nil).dispatch
      end
    end

    context 'active users' do

    end
  end

end
