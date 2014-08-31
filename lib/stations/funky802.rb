class Funky802

  SITE_URL = 'http://funky802.com'

  def initialize
  end

  def artist(doc)
    doc.xpath('//*[@id="noaNpSongArtist"]').text
  end

  def title(doc)
    doc.xpath('//*[@id="noaNpSongTitle"]').text
  end

  def site_url
    SITE_URL
  end
end
