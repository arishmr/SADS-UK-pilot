demodata <- alldata %>%
  dplyr::select(c(Group,
    age, sex, gender, ethnicity, curr.antidep, ever.antidep, ViralLoad)
    )

## Create gt_summary table by depression status

tab1 <- tbl_summary(demodata,
                    by = Group,
                    type = list(age ~ "continuous",
                                sex ~ "categorical",
                                gender ~ "categorical",
                                ethnicity ~ "categorical",
                                curr.antidep ~ "categorical",
                                ever.antidep ~ "categorical"
                                ),
                    statistic = list(
                      all_continuous() ~ "{median} ({p25}, {p75})",
                      all_categorical() ~ "{n} ({p}%)"
                    ),
                    digits = all_continuous() ~ 1,
                    label = list(
                      age ~ "Age (years)",
                      sex ~ "Sex",
                      gender ~ "Gender",
                      ethnicity ~ "Ethnicity",
                      curr.antidep ~ "Currently Taking Antidepressants",
                      ever.antidep ~ "Ever Taken Antidepressants"
                      ),
                    missing_text = "(Missing)"
) %>%
  add_p() %>%
  add_overall() %>%
  add_stat_label() %>%
  add_significance_stars()

## Save gt_summary table to Word doc

tab1.print <- tab1 %>% as_flex_table()
save_as_docx(tab1.print, 
             path = "Results/Demographics by Depression Status.docx",
             pr_section = prop_section(page_size(orient = "landscape")))

rm(tab1, tab1.print, demodata)
