#' Tidy up several aspects of an R code
#'
#' Tidy up several aspects of an R code in a selection: #' \enumerate{
#'    \item Remove a space before a bracket;
#'    \item Make space betweeb `for`/ `if` and opening of its condition;
#'    \item Remove speces before and after `:`, `::`, and `:::`.
#' }
#' Other aspects are corrected by clicking \strong{Ctrl + Shift + A} and
#' \strong{Ctrl + I} in RStudio.
#'
#' @param str a sting
tidy_r_code <- function(str) {
    # Remove space before bracket
    TXT <- gsub(pattern     = "(\\w|`)\\s([\\(\\)])",
                replacement = "\\1\\2",
                str)
    # Make space afer `for` and `if` before opening bracket
    TXT <- gsub(pattern     = "(for|if)(\\()",
                replacement = "\\1 \\2",
                TXT)

    # Remove speces before and after :, ::, and :::
    TXT <- gsub(pattern     = "(.)\\s?(:{1,3})\\s?(.)",
                replacement = "\\1\\2\\3",
                TXT)
    TXT
}


#' Addin to tidy up several aspects of an R code in a selection
#'
#' @export
rs_tidy_r_code <- function(){
    context <- rstudioapi::getActiveDocumentContext()

    for (sel in context$selection) {
        TXT  <- sel$text
        Encoding(TXT) <- "UTF-8"
        TXT <- tidy_r_code(TXT)
        rstudioapi::modifyRange(sel$range,
                                as.character(TXT),
                                context$id)
        break
    }
}
