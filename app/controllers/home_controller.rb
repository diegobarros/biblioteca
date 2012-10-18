class HomeController < ApplicationController
  def index
  end
  
  def verificar_codigo
    
    if verify_recaptcha :private_key => '6LdG6NcSAAAAAPDJYFCj4DPmyThV2x7gqwGFRtz0'
      
        session[:acertos] = params[:acertos].to_i.next
        redirect_to :controller => 'home', :action => 'index', :acertos => params[:acertos]
        
    else
        session[:erros] = params[:erros].to_i.next
       redirect_to :controller => 'home', :action => 'index', :erros => params[:erros]
    end
   
  end
  
  
end
