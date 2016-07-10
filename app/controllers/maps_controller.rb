class MapsController < ApplicationController


  def index
    @test_token = ENV['test_api_token']
    @test_secret = ENV['test_api_secret']
  end





end