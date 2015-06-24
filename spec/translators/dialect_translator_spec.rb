require 'spec_helper'
RSpec.describe DialectTranslator do

  it 'should use corresponding translator for given dialect type' do
    text = 'TEST TEXT'
    mock_object = YodaTranslator.new(text)
    allow(YodaTranslator).to receive(:new).and_return(mock_object)

    expect(YodaTranslator).to receive(:new).with(text)
    DialectTranslator.translate(DialectType::Yoda, text)
  end

  it 'should raise ArgumentError if given DialectType is not found' do
    expect {
      DialectTranslator.translate(nil, 'Some text')
    }.to raise_error(ArgumentError)
  end

end