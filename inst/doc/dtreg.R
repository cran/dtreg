## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(dtreg)

## -----------------------------------------------------------------------------
dt <- dtreg::load_datatype("https://doi.org/21.T11969/b9335ce2c99ed87735a6")

## -----------------------------------------------------------------------------
names(dt)

## -----------------------------------------------------------------------------
dtreg::show_fields(dt$group_comparison())

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  eval = FALSE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
#  labelled_inst <- dt$group_comparison(label = "my_test_results")

## -----------------------------------------------------------------------------
#  method_url <- dt$software_method(has_support_url = "https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/wilcox.test")

## -----------------------------------------------------------------------------
#  dimensions <- dt$matrix_size(number_of_rows = 50,
#                               number_of_columns = 2)

## -----------------------------------------------------------------------------
#  my_dataframe <- data.frame(W = 44.5, p = 2.2e-16)
#  output_dataframe <- dt$data_item(source_table = my_dataframe)

## -----------------------------------------------------------------------------
#  class(my_dataframe$W)

## -----------------------------------------------------------------------------
#  library(sets)
#  my_tuple <- sets::tuple(my_dataframe, "the Wilcoxon test results")
#  output_tuple <- dt$data_item(source_table = my_tuple)

## -----------------------------------------------------------------------------
#  var_1 <- dt$component(label = "var_1")
#  var_2 <- dt$component(label = "var_2")
#  two_vars <- dt$group_comparison(targets = c(var_1, var_2))

## -----------------------------------------------------------------------------
#  two_vars <- dt$group_comparison(targets = c(dt$component(label = "var_1"),
#                                              dt$component(label = "var_2")))

## -----------------------------------------------------------------------------
#  software <- dt$software(label = "R",
#                          versioninfo = "4.3.1")
#  
#  soft_library <- dt$software_library(
#    label = "stats::wilcoxon",
#    part_of = software,
#    versioninfo = "4.3.1",
#    has_support_url = "https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/wilcox.test"
#  )
#  
#  soft_method <- dt$software_method(
#    label = "Wilcoxon rank sum test",
#    part_of = soft_library,
#    is_implemented_by = "stats::wilcox.test(versicolor$Petal.Length, virginica$Petal.Length)"
#  )

## -----------------------------------------------------------------------------
#  dimensions <- dt$matrix_size(number_of_rows = 50,
#                               number_of_columns = 2)
#  input <- dt$data_item(label = "Iris: virginica and versicolor",
#                        has_characteristic = dimensions,
#                        source_url =
#                          "https://search.r-project.org/CRAN/refmans/MVTests/html/iris.html")

## -----------------------------------------------------------------------------
#  virginica <- dt$component(label = "petal length virginica")
#  versicolor <- dt$component(label = "petal length versicolor")

## -----------------------------------------------------------------------------
#  df_result <- data.frame(W = 44.5, p = 2.2e-16)
#  output <- dt$data_item(source_table = df_result)

## -----------------------------------------------------------------------------
#  wilcoxon_inst <- dt$group_comparison(
#    label = "Wilcoxon petal length, virginica vs versicolor",
#    executes = soft_method,
#    has_input = input,
#    targets = c(virginica, versicolor),
#    has_output = output
#  )

## -----------------------------------------------------------------------------
#  wilcoxon_json <- dtreg::to_jsonld(wilcoxon_instance)

## -----------------------------------------------------------------------------
#  write(wilcoxon_json, "wilcoxon_file.json")

## -----------------------------------------------------------------------------
#  library(dtreg)
#  dt <-
#    dtreg::load_datatype("https://doi.org/21.T11969/b9335ce2c99ed87735a6")
#  
#  software <- dt$software(label = "R",
#                          versioninfo = "4.3.1")
#  soft_library <- dt$software_library(
#    label = "stats::wilcoxon",
#    part_of = software,
#    versioninfo = "4.3.1",
#    has_support_url = "https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/wilcox.test"
#  )
#  soft_method <- dt$software_method(
#    label = "Wilcoxon rank sum test",
#    part_of = soft_library,
#    is_implemented_by = "stats::wilcox.test(versicolor$Petal.Length, virginica$Petal.Length)"
#  )
#  dimensions <- dt$matrix_size(number_of_rows = 50,
#                               number_of_columns = 2)
#  input <- dt$data_item(label = "Iris: virginica and versicolor",
#                        has_characteristic = dimensions,
#                        source_url = "https://search.r-project.org/CRAN/refmans/MVTests/html/iris.html")
#  virginica <- dt$component(label = "petal length virginica")
#  versicolor <- dt$component(label = "petal length versicolor")
#  df_result <-
#    data.frame(W = 44.5,
#               p = 2.2e-16,
#               stringsAsFactors = FALSE)
#  output <- dt$data_item(source_table = df_result)
#  wilcoxon_inst <- dt$group_comparison(
#    label = "Wilcoxon iris petal length, virginica vs versicolor",
#    executes = soft_method,
#    has_input = input,
#    targets = c(virginica, versicolor),
#    has_output = output
#  )
#  
#  wilcoxon_json <- dtreg::to_jsonld(wilcoxon_inst)
#  write(wilcoxon_json, "wilcoxon_file.json")

