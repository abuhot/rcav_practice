class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def squareroot

    @number = params[:number]
    @float_number = @number.to_f
    @numbersquared = Math.sqrt(@float_number)
    render ("squaredroot.html.erb")
  end

  def random

    @beginnumber = params[:bnumber]
    @endnumber = params[:enumber]


    @randomnumber = @beginnumber.to_i + rand(@endnumber.to_i - @beginnumber.to_i)

    render ("random.html.erb")
  end

  def loan_payment
    @apr = params[:interest].to_f
    @years = params[:years].to_i
    @principal = params[:principal_value].to_f
    # c is the monthly interest rate
    c = ((@apr/100)/12).to_f
    n = @years * 12


    # ================================================================================
    # Your code goes below.
    # The annual percentage rate the user input is in the decimal @apr.
    # The number of years the user input is in the integer @years.
    # The principal value the user input is in the decimal @principal.
    # ================================================================================

    #Monthly Payment Formula - P = L[c(1 + c)n]/[(1 + c)n - 1]

    @monthly_payment = @principal*(c*(1+c)**n)/((1+c)**n - 1)

    render ("loan_payment.html.erb")
  end

end
