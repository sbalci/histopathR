#' Statistical Methods
#'
#'@import shiny
#'@import miniUI
#'@import shinyWidgets
#'@import glue
#'
#' @return
#' @export
#'
#' @examples
#'
stats_met <- function() {
  ui <- miniUI::miniPage(
    miniUI::gadgetTitleBar("Statistical Methods"),
    miniUI::miniContentPanel(
      shinyWidgets::materialSwitch(
        inputId = "genel_met",
        label = "Tanimlayici",
        status = "info",
        value = FALSE
      ),
      shinyWidgets::materialSwitch(
        inputId = "t_test_met",
        label = "T-test",
        status = "info"
      ),
      shinyWidgets::materialSwitch(
        inputId = "anova_met",
        label = "Anova",
        status = "info"
      ),
      
      
      shiny::textOutput("final_paragraf")
      
      
      
      
      
    )
  )
  
  server <- function(input, output, session) {
    # Define reactive expressions, outputs, etc.
    genel_met1 <- shiny::reactive({
      if (input$genel_met) {
        "Surekli verilerin ortalama, standart sapma, median, minimum ve maksimum degerleri verildi. Kategorik veriler ve gruplanan surekli veriler sayi ve yuzde olarak ozetlenerek frekans tablolari olusturuldu."
        
      } else {
        ""
        
      }
    })
    
    t_test_met1 <- shiny::reactive({
      if (input$t_test_met) {
        "Bagimsiz iki grup karsilastirilmalarinda, sayisal degiskenlerin normal dagilim gosterdigi durumlarda Independent Samples t test, normal dagilim gostermedigi durumlarda ise Mann Whitney U testi kullanildi."
        
      } else {
        ""
        
      }
    })
    
    
    
    anova_met1 <- shiny::reactive({
      if (input$anova_met) {
        "Bagimsiz ikiden fazla grup karsilastirmalarinda, sayisal degiskenlerin normal dagilim gosterdigi durumlarda One-Way ANOVA, normal dagilim gostermedigi durumlarda ise Kruskall Wallis testi kullanildi."
        
      } else {
        ""
        
      }
    })
    
    
    output$final_paragraf <- shiny::renderText({
      genel_met1 <- genel_met1()
      t_test_met1 <- t_test_met1()
      anova_met1 <- anova_met1()
      
      glue::glue(genel_met1, t_test_met1, anova_met1)
      
    })
    
    
    return_paragraf <- shiny::reactive({
      genel_met1 <- genel_met1()
      t_test_met1 <- t_test_met1()
      anova_met1 <- anova_met1()
      
      glue::glue(genel_met1, t_test_met1, anova_met1)
      
    })
    
    
    
    
    # When the Done button is clicked, return a value
    shiny::observeEvent(input$done, {
      
      returnValue <- return_paragraf()
      
      shiny::stopApp(returnValue)
    })
  }
  
  shiny::runGadget(ui, server)
}
