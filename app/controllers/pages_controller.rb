class PagesController < ApplicationController
  def audiobible
    @activate = "audiobible"
    render "audiobible.html.erb"
  end
  
  def biblememory
    render "biblememory.html.erb"
  end
  
  def churchdirectory
    @activate = "churchdirectory"
    render "churchdirectory.html.erb"
  end
  
  def doctrinalstatement
    @activate = "doctrinalstatement"
    render "doctrinalstatement.html.erb"
  end
  
  def events
    render "events.html.erb"
  end
  
  def location
    render "location.html.erb"
  end
  
  def malawi
    @activate = "malawi"
    render "malawi.html.erb"
  end
  
  def ourpastor
    render "ourpastor.html.erb"
  end
  
  def privacypolicy
    render "privacypolicy.html.erb"
  end
  
  def psalms
    @activate = "psalms"
    render "psalms.html.erb"
  end
  
  def radio
    @activate = "radio"
    render "radio.html.erb"
  end
  
  def service
    render "service.html.erb"
  end
  
  def soulwinning
    render "soulwinning.html.erb"
  end
  
  def termsandconditions
    render "termsandconditions.html.erb"
  end
end
