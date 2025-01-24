library(shiny)
library(shinythemes)

ui <- fluidPage(
  # Embedded CSS for circular images
  tags$style(HTML("
    .circular-image {
      border-radius: 50%;
      border: 3px solid #007bff; /* Blue border */
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow */
      object-fit: cover;
    }
  ")),
  
  # Add a favicon for the browser tab
  tags$head(
    tags$link(rel = "icon", href = "https://cloud.appwrite.io/v1/storage/buckets/66f535d2000eb34ae51c/files/678f403b000cae11fa83/view?project=668c00e40018939db114&project=668c00e40018939db114&mode=admin", type = "image/x-icon")
  ),
  
  titlePanel(HTML("<strong>Welcome to Ushindi Analytics Portal</strong>"), windowTitle = "Ushindi Analytics"),
  
  navbarPage(
    title = "Ushindi Analytics",
    theme = shinythemes::shinytheme("yeti"),
    
    # Home Page
    tabPanel("Home",
             fluidRow(
               column(12, align = "center",
                      h1(strong("Welcome to Ushindi Analytics")),
                      h3(strong("Data driven solutions for success")),
                      br(),
                      img(src = "https://cloud.appwrite.io/v1/storage/buckets/66f535d2000eb34ae51c/files/678f403b000cae11fa83/view?project=668c00e40018939db114&project=668c00e40018939db114&mode=admin", height = "200px"),
                      br(),
                      p("We are dedicated to providing innovative solutions 
                        that empower success through data-driven approaches.")
               )
             ),
             hr(),
             fluidRow(
               column(12, align = "center",
                      h3(strong("Meet Our Team"))
               ),
               hr(),
               fluidRow(
                 column(6, align = "center",
                        img(src = "https://cloud.appwrite.io/v1/storage/buckets/66f535d2000eb34ae51c/files/678f43a8002113490061/view?project=668c00e40018939db114&project=668c00e40018939db114&mode=admin", 
                            class = "circular-image", height = "200px", width = "200px"),
                        h4(strong("Dr. David Muchina Kamau")),
                        p("Director")
                 ),
                 column(6, align = "center",
                        img(src = "https://cloud.appwrite.io/v1/storage/buckets/66f535d2000eb34ae51c/files/678f437e000144b39755/view?project=668c00e40018939db114&project=668c00e40018939db114&mode=admin", 
                            class = "circular-image", height = "200px", width = "200px"),
                        h4(strong("Samuel Kamau Muchina")),
                        p("Technical Lead - Software Development")
                 )
               )
             )
    ),
    
    # The Performer
    tabPanel("The Performer",
             fluidRow(
               column(12, align = "center",
                      h1(strong("The Performer")),
                      h3(strong("A Comprehensive Learning Tool")),
                      br(),
                      img(src = "https://cloud.appwrite.io/v1/storage/buckets/66f535d2000eb34ae51c/files/678a075f0013b0902ae8/view?project=668c00e40018939db114&project=668c00e40018939db114&mode=admin", height = "200px"),
                      br()
               )
             ),
             hr(),
             fluidRow(
               column(12,
                      h3(strong("Key Features")),
                      tags$ul(
                        tags$li("Notes and audio for high school students (Form 1 to Form 4)."),
                        tags$li("Generative AI for university students in Actuarial Science and Medical Physiology."),
                        tags$li("Cluster Points Tracker for 36 courses across universities."),
                        tags$li("AI-powered course descriptions and minimum requirements.")
                      )
               )
             )
    ),
    
    # Contact Us
    tabPanel("Contact Us",
             fluidRow(
               column(12, align = "center",
                      h3(strong("Get in Touch")),
                      br(),
                      p(HTML('<strong>Email:</strong> ushindianalytics2030@gmail.com')),
                      p(HTML('<strong>Phone:</strong> +254-715-137-833')),
                      p(HTML('<strong>Address:</strong> Nairobi, Kenya')),
                      
                      p(HTML('<strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/samuel-muchina-9b339732a/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app" target="_blank">Samuel Kamau Muchina</a>'))
               )
             )
    )
  )
)

server <- function(input, output, session) {
  # Server logic (none required for this basic layout)
}

shinyApp(ui, server)
