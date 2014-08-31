require 'nokogiri'
require 'capybara'
require 'capybara/poltergeist'

require './stations/kiss_fm.rb'
require './stations/funky802.rb'

class NowOnPlaying

  def initialize(station)
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app, {:js_errors => false, :timeout => 1000 }) 
    end
    @session = Capybara::Session.new(:poltergeist)

    @station = station

    parse
  end

  def reload
    parse
  end

  def artist
    @station.artist(@doc)
  end

  def title
    @station.title(@doc)
  end

  private
  def parse
    @session.visit @station.site_url
    @doc = Nokogiri::HTML(@session.html)
  end
end
