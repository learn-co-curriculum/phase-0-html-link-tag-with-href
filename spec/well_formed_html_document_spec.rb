RSpec.describe "Your First HTML Tag" do

  it 'begins with a valid doctype' do
    html = Nokogiri::HTML(File.read("./index.html")) do |config| 
      config.strict.dtdload.dtdvalid.noblanks
    end

    expect(html.children.first).to be_html5_dtd
  end

  it 'opens a main <html> tag to enclose the document' do
    contents = File.read("./index.html")
    html = Nokogiri::HTML(contents) do |config| 
      config.strict.dtdload.dtdvalid.noblanks
    end

    expect(html.child.name).to eq("html")
    expect(contents).to match(/<\/html>/i)
  end

  context 'within <html>' do
    it 'contains a <head> tag to enclose the header' do
      contents = File.read("./index.html")
      html = Nokogiri::HTML(contents) do |config| 
        config.strict.dtdload.dtdvalid.noblanks
      end

      expect(html.search("head").first.name).to eq("head")
      expect(contents).to match(/<\/head>/i)
    end

    context 'within <head>' do
      it 'contains a <title> tag to enclose the site title' do
        contents = File.read("./index.html")
        html = Nokogiri::HTML(contents) do |config| 
          config.strict.dtdload.dtdvalid.noblanks
        end

        expect(html.search("title").first.name).to eq("title")
        expect(contents).to match(/<\/title>/i)          
      end
    end

    it 'contains a <body> tag to enclose the body of the document' do
      contents = File.read("./index.html")
      html = Nokogiri::HTML(contents) do |config| 
        config.strict.dtdload.dtdvalid.noblanks
      end

      expect(html.search("body").first.name).to eq("body")
      expect(contents).to match(/<\/body>/i)
    end      
  end

  context 'w3c validation' do
    it 'is a valid w3c document' do
      validator = W3CValidators::NuValidator.new
      html = File.read("./index.html")
      results = validator.validate_text(html)

      expect(results.errors).to be_empty, "Expected a valid w3c document but got:\n #{results.errors.collect{|e| e.to_s}.join("\n")}"
    end
  end
end