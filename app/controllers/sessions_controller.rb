class SessionsController < ApplicationController
skip_before_action :authenticate_user, only: :create

def create 
  resp = Faraday.get("https://foursquare.com/oauth2/access_token") do |req|
    req.params['client_id'] = ENV['TGVSJMX3TKFUMLJSFI0USQXUHKIYV2YM525EPA22TKJIOKNK']
    req.params['client_secret'] = ENV['VUU2EOGUOMUJ1XJGGGYOD1SZELZJZL2CFHLRCQCVK5GWSZZ0']
end
