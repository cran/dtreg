## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  eval = FALSE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
#  library(dtreg)

## -----------------------------------------------------------------------------
#  dt <- dtreg::load_datatype("https://doi.org/21.T11969/b9335ce2c99ed87735a6")

## -----------------------------------------------------------------------------
#  names(dt)

## -----------------------------------------------------------------------------
#  dtreg::show_fields(dt$group_comparison())

## -----------------------------------------------------------------------------
#  labelled_inst <- dt$group_comparison(label = "my_test_results")

## -----------------------------------------------------------------------------
#  method_url <- dt$software_method(has_support_url = "https://search.r-project.org/R/refmans/stats/html/00Index.html")

## -----------------------------------------------------------------------------
#  method_line <-
#    dt$software_method(is_implemented_by = "stats::wilcox.test(var_1, var_2)")

## -----------------------------------------------------------------------------
#  method_lines <-
#    dt$software_method(is_implemented_by = paste("first line of code",
#                                                 "second line of code",
#                                                 sep = "\n"))

## -----------------------------------------------------------------------------
#  dimensions <- dt$matrix_size(number_of_rows = 100,
#                               number_of_columns = 5)

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
#  two_vars <- dt$group_comparison(targets = list(var_1, var_2))

## -----------------------------------------------------------------------------
#  two_vars <-
#    dt$group_comparison(targets = list(dt$component(label = "var_1"),
#                                       dt$component(label = "var_2")))

## -----------------------------------------------------------------------------
#  labelled_inst_json <- dtreg::to_jsonld(labelled_inst)

## -----------------------------------------------------------------------------
#  write(labelled_inst_json, "labelled_inst_file.json")

## -----------------------------------------------------------------------------
#  attach(iris)
#  virg <- iris[iris$Species == "virginica", ]
#  vers <- iris[iris$Species == "versicolor", ]
#  wilc <- stats::wilcox.test(vers$Petal.Length, virg$Petal.Length)
#  regr <- summary(stats::lm(Petal.Length ~ Petal.Width, data = virg))

## -----------------------------------------------------------------------------
#  dt_wilc <-
#    dtreg::load_datatype("https://doi.org/21.T11969/b9335ce2c99ed87735a6")
#  dt_regr <-
#    dtreg::load_datatype("https://doi.org/21.T11969/286991b26f02d58ee490")
#  dt_all <-
#    dtreg::load_datatype("https://doi.org/21.T11969/feeb33ad3e4440682a4d")

## -----------------------------------------------------------------------------
#  wilc_result <- data.frame(W = 44.5,
#                            p = 2.2e-16,
#                            stringsAsFactors = FALSE)
#  rownames(wilc_result) <- "value"

## -----------------------------------------------------------------------------
#  regr_coeff <- data.frame(regr$coefficients)
#  regr_model <-
#    data.frame(
#      F = 5.557,
#      numdf = 1,
#      dendf = 48,
#      p = 0.02254,
#      r.squared = 0.1038,
#      adj.r.squared = 0.08508,
#      stringsAsFactors = FALSE
#    )
#  rownames(regr_model) <- "value"

## -----------------------------------------------------------------------------
#  inst_1 <- dt_wilc$data_item()
#  json_1 <- dtreg::to_jsonld(inst_1)
#  inst_2 <- dt_regr$data_item()
#  json_2 <- dtreg::to_jsonld(inst_2)
#  identical(json_1, json_2)

## -----------------------------------------------------------------------------
#  data_iris <- dt_wilc$data_item(
#    label = "iris",
#    has_characteristic = dt_wilc$matrix_size(number_of_rows = 150,
#                                             number_of_columns = 5)
#  )
#  software <- dt_wilc$software(label = "R",
#                               versioninfo = "4.3.1")
#  soft_library <- dt_wilc$software_library(
#    label = "stats",
#    part_of = software,
#    versioninfo = "4.3.1",
#    has_support_url = "https://search.r-project.org/R/refmans/stats/html/00Index.html"
#  )
#  petal_length <- dt_wilc$component(label = "Petal.Length")

## -----------------------------------------------------------------------------
#  soft_method_wilc <-
#    dt_wilc$software_method(label = "stats::wilcoxon",
#                            part_of = soft_library,
#                            is_implemented_by =
#                            "stats::wilcox.test(vers$Petal.Length, virg$Petal.Length)")
#  output_wilc <- dt_wilc$data_item(source_table = wilc_result)
#  instance_wilc <- dt_wilc$group_comparison(
#    label = "Wilcoxon Petal.Length, virg vs vers",
#    executes = soft_method_wilc,
#    has_input = data_iris,
#    targets = petal_length,
#    has_output = output_wilc
#  )

## -----------------------------------------------------------------------------
#  soft_method_regr <-
#    dt_regr$software_method(label = "stats::lm",
#                            part_of = soft_library,
#                            is_implemented_by =
#                            "summary(stats::lm(Petal.Length ~ Petal.Width, data = virg))")
#  output_regr <-
#    dt_regr$data_item(source_table = list(regr_coeff, regr_model))
#  instance_regr <- dt_regr$regression_analysis(
#    label = "SLR Petal.Length vs Petal.Width, virg",
#    executes = soft_method_regr,
#    has_input = data_iris,
#    targets = petal_length,
#    has_output = output_regr
#  )

## -----------------------------------------------------------------------------
#  instance_all <- dt_all$data_analysis(
#    label = "my_data_analysis",
#    is_implemented_by = "my_github_link",
#    has_part = list(instance_wilc, instance_regr)
#  )

## -----------------------------------------------------------------------------
#  instance_all_json <- dtreg::to_jsonld(instance_all)
#  write(instance_all_json, "instance_all_file.json")

