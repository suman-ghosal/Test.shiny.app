library(rsconnect)

# Set account information (if not set up via RStudio options)
# rsconnect::setAccountInfo(name='<USERNAME>', token='<TOKEN>', secret='<SECRET>')

# Deploy the app
rsconnect::deployApp(
  appDir = ".",      # The root directory of your Golem app
  appName = "Test.shiny.app",  # Your desired app name on Posit Connect
  account = "ghosals2"     # Your Posit Connect account name
)



