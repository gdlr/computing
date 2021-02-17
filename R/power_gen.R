# Make a function!
##
## Parameters
##
# g = gravity,
# p_air = density of air
# crolling = rolling drag coefficient
# cdrag = aerodynamic drag coefficient
##
## Inputs
##
# m = car mass
# V = car speed
# A = surface area

power_gen <- function(m, V, A, g = 9.8, p_air = 1.2, crolling = 0.015, cdrag = 0.3){
  
  Pb <- crolling * m * g * V + 0.5 * A * p_air * cdrag * V^3
  
  return(Pb)
}