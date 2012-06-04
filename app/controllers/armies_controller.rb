class ArmiesController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @armies = Army.all
    breadcrumbs.add 'Armies'
  end
  
end
