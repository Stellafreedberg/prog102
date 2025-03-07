function_name <- function(inputs) {
  output_value <- do_something(inputs)
  return(output_value)
}

square <- function(x) {
  result <- x^2
  return(result)
}
square(3)
y <- 4
square(y)
square(y+1)

nth_power <- function(x, n) {
  result <- x^n
  return(result)
}
nth_power(3, 2)
nth_power(3,4)


gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
  return(result)
}
gt_threshold(c(1,2,4),3)



#video2

gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
  return(result)
}

temperatures <- c(18.1, 29.9, 22.3, 25.2)
gt_threshold(temperatures, 25)

#dig in with debugger browser()
gt_threshold <- function(x, threshold) {
  #trigger the debugger
  browser()
  is_gt <- x > threshold
  result <- sum(is_gt)
  return(result)
}
gt_threshold(temperatures, 25)

#changing the parameter values in the function will not change the original input

gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
  x <- "new x"
  return(result)
}
gt_threshold(temperatures, 25)

fish_mass <- 5
temperature <- 20
fish_growth <- function(mass, temp){
  growth <- 2+0.2 * temp
  mass <- mass+growth
  return(mass)
}
fish_growth(fish_mass,temperature)

calc_volume <- function(height,width,depth){
  area<- height*width
  volume<- area*depth
  return(volume)
}
vol<- calc_volume(3, 5, 1)
area

#video 3
