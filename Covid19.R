library(gtrendsR)
library(ggplot2)
library(ggfortify)
library(plotly)
library(timeDate)
library(timeSeries)
library(fpp2)
library(zoo)
library(stargazer)
library(glmnet)



## Credentials ##

Sys.setenv("plotly_username"="grojasmatute")
Sys.setenv("plotly_api_key"="CCHhbi6CwBTyOiA3rbIc")


fever_ES <- gtrends(c("fever"), time = "today 3-m", geo =c("ES"))
fever_IT <- gtrends(c("fever"), time = "today 3-m", geo =c("IT"))
fever_FR <- gtrends(c("fever"), time = "today 3-m", geo =c("FR"))
fever_US <- gtrends(c("fever"), time = "today 3-m", geo =c("US"))
fever_DE <- gtrends(c("fever"), time = "today 3-m", geo =c("DE"))
fever_GB <- gtrends(c("fever"), time = "today 3-m", geo =c("GB"))
fever_VE <- gtrends(c("fever"), time = "today 3-m", geo =c("VE"))
fever_KR <- gtrends(c("fever"), time = "today 3-m", geo =c("KR"))

Cough_ES <- gtrends(c("cough"), time = "today 3-m", geo =c("ES"))
Cough_IT <- gtrends(c("cough"), time = "today 3-m", geo =c("IT"))
Cough_FR <- gtrends(c("cough"), time = "today 3-m", geo =c("FR"))
Cough_US <- gtrends(c("cough"), time = "today 3-m", geo =c("US"))
Cough_DE <- gtrends(c("cough"), time = "today 3-m", geo =c("DE"))
Cough_GB <- gtrends(c("cough"), time = "today 3-m", geo =c("GB"))
Cough_VE <- gtrends(c("cough"), time = "today 3-m", geo =c("VE"))
Cough_KR <- gtrends(c("cough"), time = "today 3-m", geo =c("KR"))

Symptoms_ES <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("ES"))
Symptoms_IT <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("IT"))
Symptoms_FR <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("FR"))
Symptoms_US <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("US"))
Symptoms_DE <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("DE"))
Symptoms_GB <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("GB"))
Symptoms_VE <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("VE"))
Symptoms_KR <- gtrends(c("Symptoms"), time = "today 3-m", geo =c("KR"))

Breath_ES <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("ES"))
Breath_IT <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("IT"))
Breath_FR <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("FR"))
Breath_US <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("US"))
Breath_DE <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("DE"))
Breath_GB <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("GB"))
Breath_VE <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("VE"))
Breath_KR <- gtrends(c("Shortness of breath"), time = "today 3-m", geo =c("KR"))

Muscular_ES <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("ES"))
Muscular_IT <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("IT"))
Muscular_FR <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("FR"))
Muscular_US <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("US"))
Muscular_DE <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("DE"))
Muscular_GB <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("GB"))
Muscular_VE <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("VE"))
Muscular_KR <- gtrends(c("Muscle Pain"), time = "today 3-m", geo =c("KR"))

Sore_ES <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("ES"))
Sore_IT <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("IT"))
Sore_FR <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("FR"))
Sore_US <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("US"))
Sore_DE <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("DE"))
Sore_GB <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("GB"))
Sore_VE <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("VE"))
Sore_KR <- gtrends(c("Sore throat"), time = "today 3-m", geo =c("KR"))

head_ES <- gtrends(c( "headache"), time = "today 3-m", geo =c("ES"))
head_IT <- gtrends(c("headache"), time = "today 3-m", geo =c("IT"))
head_FR <- gtrends(c("headache"), time = "today 3-m", geo =c("FR"))
head_US <- gtrends(c("headache"), time = "today 3-m", geo =c("US"))
head_DE <- gtrends(c("headache"), time = "today 3-m", geo =c("DE"))
head_GB <- gtrends(c("headache"), time = "today 3-m", geo =c("GB"))
head_VE <- gtrends(c("headache"), time = "today 3-m", geo =c("VE"))
head_KR <- gtrends(c("headache"), time = "today 3-m", geo =c("KR"))

plot(head_KR)

malaise_ES <- gtrends(c( "malaise"), time = "today 3-m", geo =c("ES"))
malaise_IT <- gtrends(c( "malaise"), time = "today 3-m", geo =c("IT"))
malaise_FR <- gtrends(c( "malaise"), time = "today 3-m", geo =c("FR"))
malaise_US <- gtrends(c( "malaise"), time = "today 3-m", geo =c("US"))
malaise_DE <- gtrends(c( "malaise"), time = "today 3-m", geo =c("DE"))
malaise_GB <- gtrends(c( "malaise"), time = "today 3-m", geo =c("GB"))
malaise_VE <- gtrends(c( "malaise"), time = "today 3-m", geo =c("VE"))
malaise_KR <- gtrends(c( "malaise"), time = "today 3-m", geo =c("KR"))

chills_ES <- gtrends(c( "chills"), time = "today 3-m", geo =c("ES"))
chills_IT <- gtrends(c( "chills"), time = "today 3-m", geo =c("IT"))
chills_FR <- gtrends(c( "chills"), time = "today 3-m", geo =c("FR"))
chills_US <- gtrends(c( "chills"), time = "today 3-m", geo =c("US"))
chills_DE <- gtrends(c( "chills"), time = "today 3-m", geo =c("DE"))
chills_GB <- gtrends(c( "chills"), time = "today 3-m", geo =c("GB"))
chills_VE <- gtrends(c( "chills"), time = "today 3-m", geo =c("VE"))
chills_KR <- gtrends(c( "chills"), time = "today 3-m", geo =c("KR"))

plot(chills_ES)
Spain <- rowMeans(cbind(fever_ES$interest_over_time$hits, Cough_ES$interest_over_time$hits, Symptoms_ES$interest_over_time$hits, 
                        Breath_ES$interest_over_time$hits, Muscular_ES$interest_over_time$hits))
Italy <- rowMeans(cbind(fever_IT$interest_over_time$hits, Cough_IT$interest_over_time$hits, Symptoms_IT$interest_over_time$hits,
                        Breath_IT$interest_over_time$hits, Muscular_IT$interest_over_time$hits))
France <- rowMeans(cbind(fever_FR$interest_over_time$hits, Cough_FR$interest_over_time$hits, Symptoms_FR$interest_over_time$hits,
                         Breath_FR$interest_over_time$hits, Muscular_FR$interest_over_time$hits))
US <- rowMeans(cbind(fever_US$interest_over_time$hits, Cough_US$interest_over_time$hits, Symptoms_US$interest_over_time$hits,
                     Breath_US$interest_over_time$hits, Muscular_US$interest_over_time$hits))
Germany <- rowMeans(cbind(fever_DE$interest_over_time$hits, Cough_DE$interest_over_time$hits, Symptoms_DE$interest_over_time$hits,
                          Breath_DE$interest_over_time$hits, Muscular_DE$interest_over_time$hits))
UK <- rowMeans(cbind(fever_GB$interest_over_time$hits, Cough_GB$interest_over_time$hits, Symptoms_GB$interest_over_time$hits,
                     Breath_GB$interest_over_time$hits, Muscular_GB$interest_over_time$hits))
Venezuela <- rowMeans(cbind(fever_VE$interest_over_time$hits, Cough_VE$interest_over_time$hits, Symptoms_VE$interest_over_time$hits,
                            Breath_VE$interest_over_time$hits, Muscular_VE$interest_over_time$hits))
South_Korea <- rowMeans(cbind(fever_KR$interest_over_time$hits, Cough_KR$interest_over_time$hits, Symptoms_KR$interest_over_time$hits,
                              Breath_KR$interest_over_time$hits, Muscular_KR$interest_over_time$hits))


tiempo <- as.Date(fever_ES$interest_over_time$date, format = "%d/%m/%Y")

library(plotly)
covid19 <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~Spain, name = "Spain", mode ='lines' ) %>%
  add_trace(y = ~Italy, name = "Italy", mode ='lines' ) %>%
  add_trace(y = ~France, name = "France", mode ='lines' ) %>%
  add_trace(y = ~US, name = "US", mode ='lines' ) %>%
  add_trace(y = ~Germany, name = "Germany", mode ='lines' ) %>%
  add_trace(y = ~UK, name = "UK", mode ='lines' ) %>%
  add_trace(y = ~South_Korea, name = "South_Korea", mode ='lines' ) 
covid19

Esp <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~Spain, name = "Spain", mode ='lines' )
IT <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~Italy, name = "Italy", mode ='lines' )
FR <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~France, name = "France", mode ='lines' )
USA <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~US, name = "US", mode ='lines' )
DE <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~Germany, name = "Germany", mode ='lines' )
GB <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~UK, name = "UK", mode ='lines' )
KR <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~South_Korea, name = "South_Korea", mode ='lines' )
VE <- plot_ly(x = ~tiempo) %>%
  add_trace(y = ~Venezuela, name = "Venezuela", mode ='lines' )

Fig_covid19 <-subplot(Esp, IT, FR, DE)
Fig_covid19_2 <-subplot(USA, GB, KR)



#credentials
Sys.setenv("plotly_username"="grojasmatute")
Sys.setenv("plotly_api_key"="CCHhbi6CwBTyOiA3rbIc")

chart_link = api_create(Fig_covid19, filename="Covid19")
chart_link = api_create(Fig_covid19_2, filename="Covid19_2")
chart_link = api_create(covid19, filename="Covid19_all")


## Weighted average
Covid19_ES <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("ES"))
Covid19_IT <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("IT"))
Covid19_FR <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("FR"))

Covid19_US <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("US"))

Covid19_DE <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("DE"))

Covid19_GB <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("GB"))

Covid19_KR <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("KR"))

Covid19_VE <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("VE"))

Covid19_CO <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("CO"))

Covid19_MX <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("MX"))

Covid19_AR <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("AR"))

Covid19_CL <- gtrends(c("fever", "cough", "Shortness of breath", 
                        "Sore throat", "Symptoms"), time = "today 3-m", geo =c("CL"))


#Spain
Fever_Spain <- as.numeric(Covid19_ES$interest_over_time$hits[1:89])
Cough_Spain <- as.numeric(Covid19_ES$interest_over_time$hits[90:178])
Breath_Spain <- as.numeric(Covid19_ES$interest_over_time$hits[179:267])
Throat_Spain <- as.numeric(Covid19_ES$interest_over_time$hits[268:356])
Symptoms_Spain <- as.numeric(Covid19_ES$interest_over_time$hits[357:445])

Esp_covid <- rowMeans(cbind(Fever_Spain,Cough_Spain, Breath_Spain, Throat_Spain, Symptoms_Spain ))

#Italy
Fever_Italy <- as.numeric(Covid19_IT$interest_over_time$hits[1:89])
Cough_Italy <- as.numeric(Covid19_IT$interest_over_time$hits[90:178])
Breath_Italy <- as.numeric(Covid19_IT$interest_over_time$hits[179:267])
Throat_Italy <- as.numeric(Covid19_IT$interest_over_time$hits[268:356])
Symptoms_Italy <- as.numeric(Covid19_IT$interest_over_time$hits[357:445])

Italy_covid <- rowMeans(cbind(Fever_Italy,Cough_Italy, Breath_Italy, Throat_Italy, Symptoms_Italy ))

#France
Fever_France <- as.numeric(Covid19_FR$interest_over_time$hits[1:89])
Cough_France <- as.numeric(Covid19_FR$interest_over_time$hits[90:178])
Breath_France <- as.numeric(Covid19_FR$interest_over_time$hits[179:267])
Throat_France <- as.numeric(Covid19_FR$interest_over_time$hits[268:356])
Symptoms_France <- as.numeric(Covid19_FR$interest_over_time$hits[357:445])

France_covid <- rowMeans(cbind(Fever_France,Cough_France, Breath_France, Throat_France, Symptoms_France ))


#US
Fever_USA <- as.numeric(Covid19_US$interest_over_time$hits[1:89])
Cough_USA <- as.numeric(Covid19_US$interest_over_time$hits[90:178])
Breath_USA <- as.numeric(Covid19_US$interest_over_time$hits[179:267])
Throat_USA <- as.numeric(Covid19_US$interest_over_time$hits[268:356])
Symptoms_USA <- as.numeric(Covid19_US$interest_over_time$hits[357:445])

USA_covid <- rowMeans(cbind(Fever_USA,Cough_USA, Breath_USA, Throat_USA, Symptoms_USA ), na.rm = TRUE)


#DE
Fever_Ger <- as.numeric(Covid19_DE$interest_over_time$hits[1:89])
Cough_Ger <- as.numeric(Covid19_DE$interest_over_time$hits[90:178])
Breath_Ger <- as.numeric(Covid19_DE$interest_over_time$hits[179:267])
Throat_Ger <- as.numeric(Covid19_DE$interest_over_time$hits[268:356])
Symptoms_Ger <- as.numeric(Covid19_DE$interest_over_time$hits[357:445])

DE_covid <- rowMeans(cbind(Fever_Ger,Cough_Ger, Breath_Ger, Throat_Ger, Symptoms_Ger ), na.rm = TRUE)

#GB
Fever_UK <- as.numeric(Covid19_GB$interest_over_time$hits[1:89])
Cough_UK <- as.numeric(Covid19_GB$interest_over_time$hits[90:178])
Breath_UK <- as.numeric(Covid19_GB$interest_over_time$hits[179:267])
Throat_UK <- as.numeric(Covid19_GB$interest_over_time$hits[268:356])
Symptoms_UK <- as.numeric(Covid19_GB$interest_over_time$hits[357:445])

GB_covid <- rowMeans(cbind(Fever_UK,Cough_UK, Breath_UK, Throat_UK, Symptoms_UK ), na.rm = TRUE)

#KR
Fever_KOR <- as.numeric(Covid19_KR$interest_over_time$hits[1:89])
Cough_KOR <- as.numeric(Covid19_KR$interest_over_time$hits[90:178])
Breath_KOR <- as.numeric(Covid19_KR$interest_over_time$hits[179:267])
Throat_KOR <- as.numeric(Covid19_KR$interest_over_time$hits[268:356])
Symptoms_KOR <- as.numeric(Covid19_KR$interest_over_time$hits[357:445])

KR_covid <- rowMeans(cbind(Fever_KOR,Cough_KOR, Breath_KOR, Throat_KOR, Symptoms_KOR ), na.rm = TRUE)

#VE
Fever_Ven <- as.numeric(Covid19_VE$interest_over_time$hits[1:89])
Cough_Ven <- as.numeric(Covid19_VE$interest_over_time$hits[90:178])
Breath_Ven <- as.numeric(Covid19_VE$interest_over_time$hits[179:267])
Throat_Ven <- as.numeric(Covid19_VE$interest_over_time$hits[268:356])
Symptoms_Ven <- as.numeric(Covid19_VE$interest_over_time$hits[357:445])

#CO
Fever_CO <- as.numeric(Covid19_CO$interest_over_time$hits[1:89])
Cough_CO <- as.numeric(Covid19_CO$interest_over_time$hits[90:178])
Breath_CO <- as.numeric(Covid19_CO$interest_over_time$hits[179:267])
Throat_CO <- as.numeric(Covid19_CO$interest_over_time$hits[268:356])
Symptoms_CO <- as.numeric(Covid19_CO$interest_over_time$hits[357:445])

CO_covid <- rowMeans(cbind(Fever_CO,Cough_CO, Breath_CO, Throat_CO, Symptoms_CO ), na.rm = TRUE)

#MX
Fever_MX <- as.numeric(Covid19_MX$interest_over_time$hits[1:89])
Cough_MX <- as.numeric(Covid19_MX$interest_over_time$hits[90:178])
Breath_MX <- as.numeric(Covid19_MX$interest_over_time$hits[179:267])
Throat_MX <- as.numeric(Covid19_MX$interest_over_time$hits[268:356])
Symptoms_MX <- as.numeric(Covid19_MX$interest_over_time$hits[357:445])

MX_covid <- rowMeans(cbind(Fever_MX,Cough_MX, Breath_MX, Throat_MX, Symptoms_MX ), na.rm = TRUE)

#AR
Fever_AR <- as.numeric(Covid19_AR$interest_over_time$hits[1:89])
Cough_AR <- as.numeric(Covid19_AR$interest_over_time$hits[90:178])
Breath_AR <- as.numeric(Covid19_AR$interest_over_time$hits[179:267])
Throat_AR <- as.numeric(Covid19_AR$interest_over_time$hits[268:356])
Symptoms_AR <- as.numeric(Covid19_AR$interest_over_time$hits[357:445])

AR_covid <- rowMeans(cbind(Fever_AR,Cough_AR, Breath_AR, Throat_AR, Symptoms_AR ), na.rm = TRUE)


#CL
Fever_CL <- as.numeric(Covid19_CL$interest_over_time$hits[1:89])
Cough_CL <- as.numeric(Covid19_CL$interest_over_time$hits[90:178])
Breath_CL <- as.numeric(Covid19_CL$interest_over_time$hits[179:267])
Throat_CL <- as.numeric(Covid19_CL$interest_over_time$hits[268:356])
Symptoms_CL <- as.numeric(Covid19_CL$interest_over_time$hits[357:445])

CL_covid <- rowMeans(cbind(Fever_CL,Cough_CL, Breath_CL, Throat_CL, Symptoms_CL ), na.rm = TRUE)



tiempo_2 <- as.Date(Covid19_ES$interest_over_time$date[1:89], format = "%d/%m/%Y")

Esp_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~Esp_covid, name = "Spain", mode ='lines' )
Ita_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~Italy_covid, name = "Italy", mode ='lines' )
Fra_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~France_covid, name = "France", mode ='lines' )
USA_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~USA_covid, name = "USA", mode ='lines' )
DE_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~DE_covid, name = "Germany", mode ='lines' )
GB_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~GB_covid, name = "UK", mode ='lines' )
KR_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~KR_covid, name = "South Korea", mode ='lines' )
VE_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~VE_covid, name = "Venezuela", mode ='lines' )
CO_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~CO_covid, name = "Colombia", mode ='lines' )
MX_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~MX_covid, name = "Mexico", mode ='lines' )
AR_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~AR_covid, name = "Argentina", mode ='lines' )
CL_Fig <- plot_ly(x = ~tiempo_2, name = "Date") %>%
  add_trace(y = ~CL_covid, name = "Chile", mode ='lines' )

OECD1_Fig1 <- subplot(Esp_Fig, Ita_Fig, Fra_Fig, DE_Fig)
OECD1_Fig2 <- subplot(USA_Fig, GB_Fig, KR_Fig)

Latam1_fig <- subplot(VE_Fig, CO_Fig)
Latam2_fig <- subplot(MX_Fig, AR_Fig, CL_Fig)

chart_link = api_create(OECD1_Fig1, filename="OECD1")
chart_link = api_create(OECD1_Fig2, filename="OECD2")
chart_link = api_create(Latam1_fig, filename="Latam1")
chart_link = api_create(Latam2_fig, filename="Latam2")
