#' @importFrom ggplot2 labs geom_smooth
#' @title Simple Linear Regression Line 
#' @description Regression line always passes through xbar and ybar
#' @param response response variable
#' @param predictor explanatory variable
#' @examples
#' ols_reg_line(mtcars$mpg, mtcars$disp)
#' @export
#'
ols_reg_line <- function(response, predictor) {

           resp <- l(deparse(substitute(response)))
          preds <- l(deparse(substitute(predictor)))
    m_predictor <- round(mean(predictor), 2)
     m_response <- round(mean(response), 2)
              x <- NULL
              y <- NULL

    d2 <- tibble(x = m_predictor, y = m_response)
    d <- tibble(x = predictor, y = response)
    
    p <- ggplot(d, aes(x = x, y = y)) +  geom_point(fill = 'blue') +
      xlab(paste0(preds)) + ylab(paste0(resp)) +
      labs(title = 'Regression Line') +
      geom_point(data = d2, aes(x = x, y = y), color = 'red', shape = 2, size = 3) +
      geom_smooth(method = 'lm', se = FALSE)
    print(p)

}