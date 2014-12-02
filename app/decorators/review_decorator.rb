class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
  	unless self.user == nil
  	  self.user.firstname + " " + self.user.lastname 
    else
  	"anonymous"
  	end
  end

  def written_at
    self.created_at.strftime("%d/%m/%y")
  end

end
