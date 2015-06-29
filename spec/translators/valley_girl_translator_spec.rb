require 'spec_helper'

RSpec.describe ValleyGirlTranslator do
  it 'should parse given html page to text' do
    text = <<-VALLEY
<html><body><head><title>Crapola Translator</title>
<LINK href='/deg.css' rel=stylesheet type=text/css>
</head>
uhoh, no header.<table border=0 cellpadding=0 cellspacing=0 align=center width=640>
<tr><td><h3><a href="/translator.shtml">Translator</a> : Your Words in VALLEY</h3><blockquote><p>
hello how are you what are you doing?</p></blockquote></td></tr></table>uhoh, no footer.
    VALLEY
    valley_girl_translator = ValleyGirlTranslator.new(nil)
    expect(valley_girl_translator.parse(text)).to eq('hello how are you what are you doing?')
  end
end