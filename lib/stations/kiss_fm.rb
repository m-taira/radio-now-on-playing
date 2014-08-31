class KissFm

  SITE_URL = 'http://kiss-fm.co.jp'

  def initialize
  end

  def artist(doc)
    doc.xpath('//*[@id="nowPlaying"]/div/ul/span[1]').text
  end

  def title(doc)
    doc.xpath('//*[@id="nowPlaying"]/div/ul/li/span[2]').text
  end

  def site_url
    SITE_URL
  end
end
