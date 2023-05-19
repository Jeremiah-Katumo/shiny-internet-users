library(DT)
library(shiny)

navbarPage(
  "Labelling menu-items | % of population using the internet",
  tabPanel(
    "Manual Labels",
    fluidPage(
      theme = bslib::bs_theme(
        # Controls the default grayscale palette
        bg = "#0b3d91", fg = "#B8BCC2",
        # Controls the accent (e.g., hyperlink, button, etc) colors
        primary = "#EA80FC", secondary = "#48DAC6",
        base_font = c("Grandstander", "sans-serif"),
        code_font = c("Courier", "monospace"),
        heading_font = "'Helvetica Neue', Helvetica, sans-serif",
        # Can also add lower-level customization
        "input-border-color" = "#EA80FC"),
      fluidRow(
        column(
          selectInput(
            "select_country_with_manual_labels",
            label = "Select a country",
            choices=NULL
          ),
          width = 6
        ),
        column(
          selectInput(
            "selected_indicator_labelled_manual",
            "Select an indicator to display",
            choices = c(
              "Individuals using the internet (% of population)" = "IT.NET.USER.ZS",
              "Commercial bank branches (per 100,000 adults)" = "FB.CBK.BRCH.PS",
              "Secondary education, pupils" = "SE.SEC.ENRL"
            ),
            width = "100%"
          ),
          width = 6
        )
      ),
      plotOutput("chart_manual_labels")
    )
  ),
  tabPanel(
    "Labels from data",
    fluidPage(
      theme = bslib::bs_theme(
        # Controls the default grayscale palette
        bg = "#0b3d91", fg = "#B8BCC2",
        # Controls the accent (e.g., hyperlink, button, etc) colors
        primary = "#EA80FC", secondary = "#48DAC6",
        base_font = c("Grandstander", "sans-serif"),
        code_font = c("Courier", "monospace"),
        heading_font = "'Helvetica Neue', Helvetica, sans-serif",
        # Can also add lower-level customization
        "input-border-color" = "#EA80FC"),
      fluidRow(
        column(
          selectInput(
            "select_country_with_data_labels",
            label = "Select a country",
            choices = NULL
          ),
            width = 6
        ),
        column(
          selectInput(
          "selected_indicator_labelled_from_data",
          "select an indicator",
          choices = NULL
        ),
        width = 6
        )
      ),
      plotOutput("chart_data_labels")
  ),
  collapsible = TRUE
 )
)
