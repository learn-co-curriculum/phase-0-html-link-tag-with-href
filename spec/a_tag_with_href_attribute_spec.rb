RSpec.describe "An <a> tag with an 'href' attribute" do

  it 'contains an <a> tag' do
    a_tag = parsed_html.search('a').first

    expect(a_tag).to_not be_nil
  end

  it "has the inner text of 'Flatiron School'" do
    a_tag = parsed_html.search('a').first

    expect(a_tag.text).to eq('Flatiron School')
  end

  it "has the href attribute of 'https://flatironschool.com'" do
    a_tag = parsed_html.search('a').first

    expect(a_tag.attr('href')).to eq('https://flatironschool.com')
  end
end
