class LegislatorsController < ApplicationController

  before_action :set_legislator, only: [:show, :edit, :update]


  def index
  	@cons = Constituency.all
    @legislators = Legislator.all
    @parties = Party.all
  end


def show
end

def new
 @legi = Legislator.new
end

def create
 @legi = Legislator.new(legi_params)
 if @legi.save
  redirect_to legislators_path
end
end

def edit
end

def update
	if @legi.update_attributes(legi_params)
		redirect_to legislators_path
	end	
end	

def search
 @search = Legislator.search(params[:search])
 if @search == []
  @search1 = 'No record found'
end
end




private



def legi_params
 params.require(:legislator).permit(:name, :age, :constituency_id, :party_id)
end


def set_legislator
  @legi = Legislator.find(params[:id])
end





end
