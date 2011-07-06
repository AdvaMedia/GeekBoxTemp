class HomeController < ApplicationController
  
  def index
    @song = Song.skip(rand(Song.count)).limit(1).first
    @contact = Contact.new
  end
  
  def post_mail
    index
    if request.post?
      if @contact.update_attributes(params[:contact])
        session[:registreded] = true
        flash[:notice] = t('register_ok')
      else
        flash[:error] = t('register_fail')
      end
      render :action=>"index"
    else
      redirect_to :action=>"index"
    end
  end
  
  def fuckoff
    
  end
end