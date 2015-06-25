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
      it 'should trigger success' do

      end
    end

  end

end
