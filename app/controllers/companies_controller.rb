class CompaniesController < ApplicationController 
  
	def new
  		@company = Company.new
  	end

  	def create
  		@company = Company.new(params[:company])
  		if @company.save
  			redirect_to root_path, notice:"Empresa cadastrada com sucesso."
  		else
  			render action: "new"
  		end
   	end	
end