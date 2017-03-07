class PagesController < ApplicationController
  def audiobible
    active = "active"
    render "audiobible.html.erb"
  end
  
  def biblememory
    render "biblememory.html.erb"
  end
  
  def churchdirectory
    active = "active"
    render "churchdirectory.html.erb"
  end
  
  def doctrinalstatement
    active = "active"
    render "doctrinalstatement.html.erb"
  end
  
  def events
    render "events.html.erb"
  end
  
  def location
    render "location.html.erb"
  end
  
  def malawi
    active = "active"
    render "malawi.html.erb"
  end
  
  def ourpastor
    render "ourpastor.html.erb"
  end
  
  def privacypolicy
    active = "active"
    render "privacypolicy.html.erb"
  end
  
  def psalms
    active = "active"
    render "psalms.html.erb"
  end
  
  def radio
    active = "active"
    render "radio.html.erb"
  end
  
  def service
    render "service.html.erb"
  end
  
  def soulwinning
    render "soulwinning.html.erb"
  end
  
  def termsandconditions
    active = "active"
    render "termsandconditions.html.erb"
  end
end
