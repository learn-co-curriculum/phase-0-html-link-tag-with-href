RSpec.describe "An <a> tag with an 'href' attribute" do

  it 'contains an <a> tag' do
    html = Nokogiri::HTML(File.read("./index.html")) do |config| 
      config.strict.dtdload.dtdvalid.noblanks
    end

    a_tag = html.search("a").first

    expect(a_tag).to_not be_nil
  end

  it 'has the inner text of Flatiron School' do
    contents = File.read("./index.html")
    html = Nokogiri::HTML(contents) do |config| 
      config.strict.dtdload.dtdvalid.noblanks
    end

    a_tag = html.search("a").first

    expect(a_tag.text).to eq("Flatiron School")
  end

  it 'has the href attribute of https://flatironschool.com' do
    contents = File.read("./index.html")
    html = Nokogiri::HTML(contents) do |config| 
      config.strict.dtdload.dtdvalid.noblanks
    end

    a_tag = html.search("a").first

    expect(a_tag.attr("href")).to eq("https://flatironschool.com")
  end
end