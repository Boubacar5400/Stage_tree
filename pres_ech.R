# genre
BL2 <- data %>%
  select(Situation_genre) %>%
  tbl_summary(label=list(Situation_genre~"Genre"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center")


# [45] "Situation_age"  
BL2 <- data %>%
  select(Situation_age) %>%
  tbl_summary(label=list(Situation_age~"�ge"),
              statistic = list(all_continuous()~"(Min: {min}) Moy: {mean} (Max:
{max})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~0,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center")

# [46] "Situation_age_tranches" 
BL2 <- data %>%
  select(Situation_age_tranches) %>%
  tbl_summary(label=list(Situation_age_tranches~"Tranches d'�ge"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center")

# [47] "Situation_nationalite" 
data$Situation_nationalite <-ifelse(Situation_nationalite=="Fran�aise" |Situation_nationalite=="fran�aise" |Situation_nationalite=="Fr" | Situation_nationalite=="Fracaise" |  Situation_nationalite=="Francaise" |Situation_nationalite=="Fran�ais"| Situation_nationalite=="FrancaiE" | Situation_nationalite=="francaise"| Situation_nationalite=="Francais" | Situation_nationalite=="francais" | Situation_nationalite=="fran�ais" | Situation_nationalite=="Francaisd" | Situation_nationalite==" FRANCAISE" | Situation_nationalite=="france" | Situation_nationalite=="FRANCE"  ,"France", "Etranger")
BL2 <- data %>%
  select(Situation_nationalite) %>%
  tbl_summary(label=list(Situation_nationalite~"Nationalit�"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center")

# [48] "Situation_etudes"
data$Situation_etudes <- data$Situation_etudes%>%
  fct_relevel("Aucun dipl�me","Brevet des coll�ges","CAP ou BEP","Baccalaur�at g�n�ral","Baccalaur�at technologique ou professionnel","Dipl�me niveau bac+2","Dipl�me niveau bac+3","Dipl�me niveau bac+5 et plus")
BL2 <- data %>%
  select(Situation_etudes) %>%
  tbl_summary(label=list(Situation_etudes~"Niveau d'�tudes"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center")

# [49] "Situation_csp" 
data$Situation_csp <- data$Situation_csp %>%
  fct_relevel("Agriculteurs exploitants","Artisans, commer�ants et chefs d'entreprise","Cadres et professions intellectuelles sup�rieures","Professions interm�diaires","Employ�s","Ouvriers","Retrait�s","Autres personnes sans activit� professionnelle (dont �tudiants)")
BL2 <- data %>%
  select(Situation_csp) %>%
  tbl_summary(label=list(Situation_csp~"CSP"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center") %>%
  column_spec(1, width = "6cm")
# [50] "Situation_revenu" 

data$Situation_revenu <- data$Situation_revenu %>%
  fct_relevel("Moins de 800 euros","De 800 � moins de 1200 euros","De 1200 � moins de 1700 euros","De 1700 � moins de 2400 euros","De 2400 � moins de 3100 euros","De 3100 � moins de 3800 euros","De 3800 � moins de 4500 euros","De 4500 � moins de 6000 euros","De 7500 euros � plus","Vous ne souhaitez pas r�pondre")
BL2 <- data %>%
  select(Situation_revenu) %>%
  tbl_summary(label=list(Situation_revenu~"Niveau de revenu"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center")
# [51] "Siuation_situation" 
BL2 <- data %>%
  select(Siuation_situation) %>%
  tbl_summary(label=list(Siuation_situation~"Situation matrimoniale"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center")


######
data$Preoccupation_impacts <- data$Preoccupation_impacts %>%
  fct_relevel("Pas du tout d'accord","Plut�t pas d'accord","Plut�t d'accord","Tout � fait d'accord")
data$Preoccupation_environnement <- data$Preoccupation_environnement %>%
  fct_relevel("Pas du tout d'accord","Plut�t pas d'accord","Plut�t d'accord","Tout � fait d'accord")
data$Preoccupation_secu_alim <- data$Preoccupation_secu_alim %>%
  fct_relevel("Pas du tout d'accord","Plut�t pas d'accord","Plut�t d'accord","Tout � fait d'accord")
BL2 <- data %>%
  select(Preoccupation_environnement,Preoccupation_secu_alim,Preoccupation_impacts) %>%
  tbl_summary(label=list(Preoccupation_environnement ~"Je suis inquiet concernant les enjeux et risques
environnementaux (pollutions, d�r�glement climatique,
sauvegarde de la biodiversit�, pr�servation des
ressources...)",
                         Preoccupation_secu_alim~"Je me sens pr�occup� par les enjeux  de s�curit�
alimentaire mondiale",
                         Preoccupation_impacts~"Au quotidien, je fais attention � mes propres impacts
sur l'environnement et la soci�t�"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" ,
                 longtable=T)%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center") %>%
  column_spec(1, width = "6cm")
####

BL2 <- data %>%
  select(Critere_prix,Critere_composition,Critere_qualite,Critere_informations,Critere_proximite,Critere_impact_env,Critere_respect_animaux,Critere_nouveaute,Critere_facilite_prep) %>%
  tbl_summary(label=list(Critere_prix ~"Le prix des produits",
                         Critere_composition  ~"La composition nutritionnelle des produits (glucides,
lipides, prot�ines, vitamines, min�raux...)",
                         Critere_qualite  ~"La qualit� des produits",
                         Critere_informations ~"Les informations sur les produits (informations
disponibles sur l'�tiquetage)",
                         Critere_proximite ~"La proximit� des producteurs (produits locaux)",
                         Critere_impact_env ~"L'impact sur l'environnement des produits",
                         Critere_respect_animaux ~"Le respect du bien-�tre animal",
                         Critere_nouveaute ~"La nouveaut� des produits",
                         Critere_facilite_prep ~"La facilit� de pr�paration des produits"),
              statistic = list(all_continuous()~"moyenne: {mean} (Ecart type:
{sd})",all_categorical()~"Effectif: {n} (Proportion: {p}%)"),
              digits=all_continuous()~1,
              missing = "no")
BL2%>%
  modify_header(update=list(
    label~"**Variables**"))%>%
  as_kable_extra(format="latex" )%>%
  kableExtra::kable_styling(full_width=F,
                            position = "center") %>%
  column_spec(1, width = "6cm")
