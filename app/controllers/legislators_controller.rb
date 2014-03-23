class LegislatorsController < ApplicationController
  
  before_action :set_legislator, only: [:show_legislator, :edit_legislator, :update_legislator]
  before_action :set_constituency, only: [:show_constituency, :edit_constituency, :update_constituency]
  before_action :set_party, only: [:show_party, :edit_party, :update_party]

  def index
  	@cons = Constituency.all
  	@legislators = Legislator.all
    @parties = Party.all
  end

  def show_constituency
  end
  
  def new_constituency
  	@constituency = Constituency.new
  end

  def create_constituency
  	@constituency = Constituency.new(con_params)
  	if @constituency.save
  		redirect_to home_path
  	end
  end

  def edit_constituency	
  end

  def update_constituency
	if @con.update_attributes(con_params)
		redirect_to home_path
	end	
  end

  def show_legislator
  end

  def new_legislator
  	@legi = Legislator.new
  end

  def create_legislator
  	@legi = Legislator.new(legi_params)
  	if @legi.save
  		redirect_to home_path
  	end
  end

  def edit_legislator
  end
 
  def update_legislator
	if @legi.update_attributes(legi_params)
		redirect_to home_path
	end	
  end	
  
  def show_Party
    
  end
  
  def new_party
  	@party = Party.new
  end

  def create_party
  	@party = Party.new(party_params)
  	if @party.save
  		redirect_to home_path
  	end
  end

  def edit_party
  end
 
  def update_party
  if @party.update(party_params)
    redirect_to home_path
  end 
  end 



  def search_constituency
  	@search = Constituency.search(params[:search])
    if @search == []
  		@search1 = 'No record found'
  	end
  		
  end

  def search_legislator
  	@search = Legislator.search(params[:search])
  	 if @search == []
  		@search1 = 'No record found'
  	end
  end

  def search_party
    @search = Party.search(params[:search])
     if @search == []
      @search1 = 'No record found'
    end
  end


  private
  

  def con_params
  	params.require(:constituency).permit(:name, :district, :state)
  end

  def legi_params
  	params.require(:legislator).permit(:name, :age, :constituency_id, :party_id)
  end

  def party_params
    params.require(:party).permit(:name, :president, :established_year)
  end

  def set_legislator
    @legi = Legislator.find(params[:id])
  end

  def set_constituency
    @con = Constituency.find(params[:id])
  end

  def set_party
    @party = Party.find(params[:id])
  end


  

end
