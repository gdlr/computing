
power_gen <- function(m, V, A, g = 9.8, p_air = 1.2, crolling = 0.015, cdrag = 0.3){
  # Body 
  Pb <- crolling * m * g * V + 0.5 * A * p_air * cdrag * V^3
  #Error checking:
  V = ifelse((V < 0), return("vehicle speed must be positive"), V)
  m = ifelse((m < 0), return("vehicle mass cannot be negative"), m)
  g = ifelse((g != 9.8), return("vehicle is not on Earth?"), g)
  # Output is the power output
  return(Pb)
}


