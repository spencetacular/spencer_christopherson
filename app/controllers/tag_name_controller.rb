class Tag_NameController < ApplicationController
	
	def index
		@tag_names = Tag_Name.all
	end

	def new
		@tag_name = Tag_Name.new
	end

	def create
		@tag_name = Tag_Name.new(tag_name_params)
		if @tag_name.save
			redirect_to tag_names_path
		else
			render :new
		end
	end

	private
		def tag_name_params
			params.require(:tag_name).permit(:name)
		end
end

