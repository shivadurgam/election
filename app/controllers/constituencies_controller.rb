  class ConstituenciesController < ApplicationController
    before_action :set_constituency, only: [:show, :edit, :update]
    

    def index
      @cons = Constituency.all
      @legislators = Legislator.all
      @parties = Party.all
    end

    def show
    end
    
    def new
      @constituency = Constituency.new
    end

    def create
      @constituency = Constituency.new(con_params)
      if @constituency.save
        redirect_to constituencies_path
      end
    end

    def edit
    end

    def update
     if @con.update_attributes(con_params)
      redirect_to constituencies_path
    end
  end

  def search
   @search = Constituency.search(params[:search])
   if @search == []
    @search1 = 'No record found'
  end
end 

private


def con_params
 params.require(:constituency).permit(:name, :district, :state)
end



def set_constituency
  @con = Constituency.find(params[:id])
end

end
