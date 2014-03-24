class PartiesController < ApplicationController
  before_action :set_party, only: [:show, :edit, :update]

  def index
    @cons = Constituency.all
    @legislators = Legislator.all
    @parties = Party.all
  end


def show
  
end

def new
 @party = Party.new
end

def create
 @party = Party.new(party_params)
 if @party.save
  redirect_to parties_path
end
end

def edit
end

def update
  if @party.update(party_params)
    redirect_to parties_path
  end 
end 



def search
  @search = Party.search(params[:search])
  if @search == []
    @search1 = 'No record found'
  end
end


private

def party_params
  params.require(:party).permit(:name, :president, :established_year)
end


def set_party
  @party = Party.find(params[:id])
end
end
