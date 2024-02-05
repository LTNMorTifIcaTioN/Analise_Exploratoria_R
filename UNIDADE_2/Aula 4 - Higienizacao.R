install.packages("basedosdados")
install.packages('contrib.url')

library("basedosdados")

# Replace "YOUR_PROJECT_ID" with your actual Project ID from the Google Cloud console
set_billing_id("YOUR_PROJECT_ID")

# To load the data directly into R
query <- bdplyr("br_ibge_ppm.efetivo_rebanhos")
df <- bd_collect(query)