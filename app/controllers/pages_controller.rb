require 'json'
require 'open-uri'
class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:home]

  def home
    @biens = Bien.geocoded #returns flats with coordinates

    @markers = @biens.map do |bien|
      {
        lat: bien.latitude,
        lng: bien.longitude
      }
    end

    url = 'http://api.cquest.org/dvf?lat=48.85&lon=2.35&dist=200'
    listeimmo = open(url).read
    immo = JSON.parse(listeimmo)
    @features = immo["features"]
    features = @features
    @valeur = features.each do |r|
        @tamere = r["properties"]["valeur_fonciere"]
    end

    @test = ["salut", "au revoir"]


    end


    def index
        @biens = Bien.all
    end

end




