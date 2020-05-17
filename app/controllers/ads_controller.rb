class AdsController < ApplicationController

	def index
			@ads = Ad.all
	end

	def show
			@ad = Ad.find(params[:id])
	end

	def new
			@ad = Ad.new

	end

	def create
		@ad = Ad.new
		@ad.name = params[:ad][:name]
		@ad.desc = params[:ad][:desc]
		@ad.price = params[:ad][:price]
		@ad.email = params[:ad][:email]
		@ad.img_url = params[:ad][:img_url]

		@ad.save

		redirect_to "/ads"
	end

	def edit
		@ads = Ad.find(params[:id])
	end

	def update
		@ad = Ad.find(params[:ad][:id])
		@ad.name = params[:ad][:name]
		@ad.desc = params[:ad][:desc]
		@ad.price = params[:ad][:price]
		@ad.email = params[:ad][:email]
		@ad.img_url = params[:ad][:img_url]

		@ad.save

		redirect_to "/ads"
	end

	def delete
		@ad = Ad.find(params[:id])
		@ad.destroy
		redirect_to '/ads'
	end
	
end
