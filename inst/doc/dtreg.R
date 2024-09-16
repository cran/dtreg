## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(dtreg)

## -----------------------------------------------------------------------------
dt <- dtreg::load_datatype("https://doi.org/21.T11969/ff5e3f857788d20dd1aa")

## -----------------------------------------------------------------------------
names(dt)

## -----------------------------------------------------------------------------
dtreg::show_fields(dt$statistical_test_of_difference())

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  eval = FALSE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
#  labelled_inst <- dt$statistical_test_of_difference(label = "my_test_results")

## -----------------------------------------------------------------------------
#  method_url <- dt$software_method(has_support_url = "https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/wilcox.test")

## -----------------------------------------------------------------------------
#  sample_size <- dt$sample_size(has_specified_numeric_value = 50)

## -----------------------------------------------------------------------------
#  my_dataframe <- data.frame(W = 44.5, p = 2.2e-16)
#  output_dataframe <- dt$inferential_test_output(has_format = my_dataframe)

## -----------------------------------------------------------------------------
#  class(my_dataframe$W)

## -----------------------------------------------------------------------------
#  library(sets)
#  my_tuple <- sets::tuple(my_dataframe, "the Wilcoxon test results")
#  output_tuple <- dt$inferential_test_output(has_format = my_tuple)

## -----------------------------------------------------------------------------
#  var_1 <- dt$statistical_variable(label = "var_1")
#  var_2 <- dt$statistical_variable(label = "var_2")
#  two_vars <- dt$statistical_test_of_difference(evaluates = c(var_1, var_2))

## -----------------------------------------------------------------------------
#  two_vars <- dt$statistical_test_of_difference(evaluates = c(
#    dt$statistical_variable(label = "var_1"),
#    dt$statistical_variable(label = "var_2")
#  ))

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
#    uses_software = soft_library,
#    is_implemented_by = "URL_code"
#  )

## -----------------------------------------------------------------------------
#  sample_size <- dt$sample_size(has_specified_numeric_value = 50)
#  input <- dt$data_input(label = "Iris: virginia and versicolor",
#                         has_characteristic = sample_size,
#                         source =
#                           "https://search.r-project.org/CRAN/refmans/MVTests/html/iris.html")

## -----------------------------------------------------------------------------
#  virginia <- dt$statistical_variable(label = "petal length virginia",
#                                      has_format = "numeric")
#  versicolor <-
#    dt$statistical_variable(label = "petal length versicolor",
#                            has_format = "numeric")
#  variables <- dt$outcome_variable(label = "virginia vs versicolor",
#                                   requires = c(virginia, versicolor))

## -----------------------------------------------------------------------------
#  df_result <- data.frame(W = 44.5, p = 2.2e-16)
#  output <- dt$inferential_test_output(has_format = df_result)

## -----------------------------------------------------------------------------
#  wilcoxon_inst <- dt$statistical_test_of_difference(
#    label = "Wilcoxon petal length, virginia vs versicolor",
#    executes = soft_method,
#    has_specified_input = input,
#    evaluates = variables,
#    has_specified_output = result
#  )

## -----------------------------------------------------------------------------
#  wilcoxon_json <- dtreg::to_jsonld(wilcoxon_instance)

## -----------------------------------------------------------------------------
#  write(wilcoxon_json, "wilcoxon_file.json")

## -----------------------------------------------------------------------------
#  library(dtreg)
#  dt <-
#    dtreg::load_datatype("https://doi.org/21.T11969/ff5e3f857788d20dd1aa")
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
#    uses_software = soft_library,
#    is_implemented_by = "url_code"
#  )
#  sample_size <- dt$sample_size(has_specified_numeric_value = 50)
#  input <- dt$data_input(label = "Iris: virginia and versicolor",
#                         has_characteristic = sample_size,
#                         source = "https://search.r-project.org/CRAN/refmans/MVTests/html/iris.html")
#  virginia <- dt$statistical_variable(label = "petal length virginia",
#                                      has_format = "numeric")
#  versicolor <-
#    dt$statistical_variable(label = "petal length versicolor",
#                            has_format = "numeric")
#  variables <- dt$outcome_variable(label = "virginia vs versicolor",
#                                   requires = c(virginia, versicolor))
#  df_result <-
#    data.frame(W = 44.5,
#               p = 2.2e-16,
#               stringsAsFactors = FALSE)
#  output <- dt$inferential_test_output(has_format = df_result)
#  wilcoxon_inst <- dt$statistical_test_of_difference(
#    label = "Wilcoxon iris petal length, virginia vs versicolor",
#    executes = soft_method,
#    has_specified_input = input,
#    evaluates = variables,
#    has_specified_output = output
#  )
#  
#  wilcoxon_json <- dtreg::to_jsonld(wilcoxon_inst)
#  write(wilcoxon_json, "wilcoxon_file.json")

