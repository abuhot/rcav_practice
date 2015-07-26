Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })


  get("/square_root/:number", { :controller => "calculations", :action => "squareroot" })
  get("/random/:bnumber/:enumber", { :controller => "calculations", :action => "random" })
  get("/payment/:interest/:years/:principal_value", { :controller => "calculations", :action => "loan_payment" })

end
