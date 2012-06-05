class SongsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    #raise params.inspect
    @song = Song.new(params[:song].merge({:user_id => current_user.id}))
    
    respond_to do |format|
        if @song.save
          format.html  { redirect_to(@song,
                        :notice => 'Post was successfully created.') }
          format.json  { render :json => @song,
                        :status => :created, :location => @song }
        else
          format.html  { render :action => "new" }
          format.json  { render :json => @song.errors,
                        :status => :unprocessable_entity }
        end
    end
  end
  
  def new
    @song = Song.new
    
    respond_to do |format|
        format.html  # new.html.erb
        format.json  { render :json => @post }
    end
  end
  
  def show
    breadcrumbs.add 'Songs', songs_path
    @songs = Song.all   
  end


end
