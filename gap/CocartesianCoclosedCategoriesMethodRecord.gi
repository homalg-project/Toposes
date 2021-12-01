# THIS FILE WAS AUTOMATICALLY GENERATED
# FROM MonoidalCategories v2021.11-05
# USING CategoryConstructor v2021.11-08

# SPDX-License-Identifier: GPL-2.0-or-later
# Toposes: Elementary toposes
#
# Preprocessor functions for dual operations
#

BindGlobal( "DualPreProcessorFuncCocartesianEvaluationMorphismWithGivenRange", { cat, a, b, r } -> [ Opposite( cat ), Opposite( b ), Opposite( a ), Opposite( r ) ] );

BindGlobal( "DualPreProcessorFuncCoexponentialToCoproductAdjunctionMap", { cat, a, b, f } -> [ Opposite( cat ), Opposite( b ), Opposite( a ), Opposite( f ) ] );

BindGlobal( "DualPreProcessorFuncCoexponentialCoproductCompatibilityMorphism",
              { cat, list } -> [ Opposite( cat ), [ Opposite( list[2] ), Opposite( list[4] ), Opposite( list[1] ), Opposite( list[3] ) ] ]
);

BindGlobal( "DualPreProcessorFuncCoexponentialCoproductCompatibilityMorphismWithGivenObjects",
              { cat, s, list, r } -> [ Opposite( cat ), Opposite( r ), [ Opposite( list[2] ), Opposite( list[4] ), Opposite( list[1] ), Opposite( list[3] ) ], Opposite( s ) ]
);

BindGlobal( "DualPreProcessorFuncCocartesianDualityCoproductCompatibilityMorphismWithGivenObjects",
              { cat, s, a, b, r} -> [ Opposite( cat ), Opposite( r ), Opposite( a ), Opposite( b ), Opposite( s ) ]
);

BindGlobal( "DualPreProcessorFuncCocartesianLambdaElimination", { cat, a, b, alpha } -> [ Opposite( cat ), Opposite( b ), Opposite( a ), Opposite( alpha ) ] );

# Implementations
#

InstallValue( COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD, rec(

CoexponentialOnObjects := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "i" ] ],
  return_type := "object",
  dual_operation := "InternalHomOnObjects",
  dual_arguments_reversed := true,
),

CoexponentialOnMorphisms := rec(
  filter_list := [ "category", "morphism", "morphism" ],
  io_type := [ [ "alpha", "beta" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, Source( alpha ), Range( beta ) )",
  output_range_getter_string := "CoexponentialOnObjects( cat, Range( alpha ), Source( beta ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "InternalHomOnMorphisms",
  dual_arguments_reversed := true,
),

CoexponentialOnMorphismsWithGivenCoexponentials := rec(
  filter_list := [ "category", "object", "morphism", "morphism", "object" ],
  io_type := [ [ "s", "alpha", "beta", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "InternalHomOnMorphismsWithGivenInternalHoms",
  dual_arguments_reversed := true,
),

CocartesianEvaluationMorphism := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "a", "r" ] ],
  output_source_getter_string := "a",
  output_range_getter_string := "Coproduct( b, CoexponentialOnObjects( cat, a, b ) )",
  with_given_object_position := "Range",
  return_type := "morphism",
  dual_operation := "EvaluationMorphism",
  dual_arguments_reversed := true,
),

CocartesianEvaluationMorphismWithGivenRange := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "r" ], [ "a", "r" ] ],
  return_type := "morphism",
  dual_operation := "EvaluationMorphismWithGivenSource",
  dual_preprocessor_func := DualPreProcessorFuncCocartesianEvaluationMorphismWithGivenRange,
  dual_arguments_reversed := false,
),

CocartesianCoevaluationMorphism := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "s", "b" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, Coproduct( a, b ), a )",
  output_range_getter_string := "b",
  with_given_object_position := "Source",
  return_type := "morphism",
  dual_operation := "CoevaluationMorphism",
  dual_arguments_reversed := false,
),

CocartesianCoevaluationMorphismWithGivenSource := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "s" ], [ "s", "b" ] ],
  return_type := "morphism",
  dual_operation := "CoevaluationMorphismWithGivenRange",
  dual_arguments_reversed := false,
),

CoproductToCoexponentialAdjunctionMap := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "b", "c", "g" ], [ "i", "c" ] ],
  return_type := "morphism",
  dual_operation := "CoproductToInternalHomAdjunctionMap",
  dual_arguments_reversed := false,
),

CoexponentialToCoproductAdjunctionMap := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "a", "b", "f" ], [ "a", "t" ] ],
  return_type := "morphism",
  dual_operation := "InternalHomToCoproductAdjunctionMap",
  dual_preprocessor_func := DualPreProcessorFuncCoexponentialToCoproductAdjunctionMap,
  dual_arguments_reversed := false,
),

CocartesianPreCoComposeMorphism := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "c" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, c )",
  output_range_getter_string := "Coproduct( CoexponentialOnObjects( cat, a, b ), CoexponentialOnObjects( cat, b, c ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CocartesianPreComposeMorphism",
  dual_arguments_reversed := true,
),

CocartesianPreCoComposeMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "c", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "CocartesianPreComposeMorphismWithGivenObjects",
  dual_arguments_reversed := true,
),

CocartesianPostCoComposeMorphism := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "c" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, c )",
  output_range_getter_string := "Coproduct( CoexponentialOnObjects( cat, b, c ), CoexponentialOnObjects( cat, a, b ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CocartesianPostComposeMorphism",
  dual_arguments_reversed := true,
),

CocartesianPostCoComposeMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "c", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "CocartesianPostComposeMorphismWithGivenObjects",
  dual_arguments_reversed := true,
),

CocartesianDualOnObjects := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "acd" ] ],
  return_type := "object",
  dual_operation := "DualOnObjects",
),

CocartesianDualOnMorphisms := rec(
  filter_list := [ "category", "morphism" ],
  io_type := [ [ "alpha" ], [ "s", "r" ] ],
  output_source_getter_string := "CocartesianDualOnObjects( cat, Range( alpha ) )",
  output_range_getter_string := "CocartesianDualOnObjects( cat, Source( alpha ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "DualOnMorphisms",
),

CocartesianDualOnMorphismsWithGivenCocartesianDuals := rec(
  filter_list := [ "category", "object", "morphism", "object" ],
  io_type := [ [ "s", "alpha", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "DualOnMorphismsWithGivenDuals",
  dual_arguments_reversed := true,
),

CocartesianEvaluationForCocartesianDual := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "s", "r" ] ],
  output_source_getter_string := "InitialObject( cat )",
  output_range_getter_string := "Coproduct( a, CocartesianDualOnObjects( cat, a ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "EvaluationForDual",
),

CocartesianEvaluationForCocartesianDualWithGivenCoproduct := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "s", "a", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "EvaluationForDualWithGivenCoproduct",
  dual_arguments_reversed := true,
),

MorphismFromCocartesianBidual := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "s", "a" ] ],
  output_source_getter_string := "CocartesianDualOnObjects( cat, CocartesianDualOnObjects( cat, a ) )",
  output_range_getter_string := "a",
  with_given_object_position := "Source",
  return_type := "morphism",
  dual_operation := "MorphismToBidual",
),

MorphismFromCocartesianBidualWithGivenCocartesianBidual := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "s" ], [ "s", "a" ] ],
  return_type := "morphism",
  dual_operation := "MorphismToBidualWithGivenBidual",
  dual_arguments_reversed := false,
),

CoexponentialCoproductCompatibilityMorphism := rec(
  filter_list := [ "category", "list_of_objects" ],
  input_arguments_names := [ "cat", "list" ],
  output_source_getter_string := "CoexponentialOnObjects( cat, Coproduct( list[1], list[2] ), Coproduct( list[3], list[4] ) )",
  output_range_getter_string := "Coproduct( CoexponentialOnObjects( cat, list[1], list[3] ), CoexponentialOnObjects( cat, list[2], list[4] ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CoproductInternalHomCompatibilityMorphism",
  dual_preprocessor_func := DualPreProcessorFuncCoexponentialCoproductCompatibilityMorphism,
  dual_arguments_reversed := false,
),

CoexponentialCoproductCompatibilityMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "list_of_objects", "object" ],
  input_arguments_names := [ "cat", "source", "list", "range" ],
  output_source_getter_string := "source",
  output_range_getter_string := "range",
  return_type := "morphism",
  dual_operation := "CoproductInternalHomCompatibilityMorphismWithGivenObjects",
  dual_preprocessor_func := DualPreProcessorFuncCoexponentialCoproductCompatibilityMorphismWithGivenObjects,
  dual_arguments_reversed := false,
),

CocartesianDualityCoproductCompatibilityMorphism := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "s", "r" ] ],
  output_source_getter_string := "CocartesianDualOnObjects( cat, Coproduct( a, b ) )",
  output_range_getter_string := "Coproduct( CocartesianDualOnObjects( cat, a ), CocartesianDualOnObjects( cat, b ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CoproductDualityCompatibilityMorphism",
  dual_arguments_reversed := false,
),

CocartesianDualityCoproductCompatibilityMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "CoproductDualityCompatibilityMorphismWithGivenObjects",
  dual_preprocessor_func := DualPreProcessorFuncCocartesianDualityCoproductCompatibilityMorphismWithGivenObjects,
  dual_arguments_reversed := false,
),

MorphismFromCoexponentialToCoproduct := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, b )",
  output_range_getter_string := "Coproduct( a, CocartesianDualOnObjects( cat, b ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "MorphismFromCoproductToInternalHom",
  dual_arguments_reversed := true,
),

MorphismFromCoexponentialToCoproductWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "MorphismFromCoproductToInternalHomWithGivenObjects",
  dual_arguments_reversed := true,
),

IsomorphismFromCocartesianDualToCoexponential := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "i", "d" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromInternalHomToDual",
),

IsomorphismFromCoexponentialToCocartesianDual := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "d", "i" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromDualToInternalHom",
),

UniversalPropertyOfCocartesianDual := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "a", "t", "alpha" ], [ "d", "t" ] ],
  return_type := "morphism",
  dual_operation := "UniversalPropertyOfDual",
  dual_arguments_reversed := false,
),

CocartesianLambdaIntroduction := rec(
  filter_list := [ "category", "morphism" ],
  io_type := [ [ "alpha" ], [ "u", "i" ] ],
  return_type := "morphism",
  dual_operation := "LambdaIntroduction",
),

CocartesianLambdaElimination := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "a", "b", "alpha" ], [ "a", "b" ] ],
  return_type := "morphism",
  dual_operation := "LambdaElimination",
  dual_preprocessor_func := DualPreProcessorFuncCocartesianLambdaElimination,
  dual_arguments_reversed := false,
),

IsomorphismFromObjectToCoexponential := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "a", "r" ] ],
  output_source_getter_string := "a",
  output_range_getter_string := "CoexponentialOnObjects( cat, a, InitialObject( cat ) )",
  with_given_object_position := "Range",
  return_type := "morphism",
  dual_operation := "IsomorphismFromInternalHomToObject",
),

IsomorphismFromObjectToCoexponentialWithGivenCoexponential := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "r" ], [ "a", "r" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromInternalHomToObjectWithGivenInternalHom",
  dual_arguments_reversed := false,
),

IsomorphismFromCoexponentialToObject := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "s", "a" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, InitialObject( cat ) )",
  output_range_getter_string := "a",
  with_given_object_position := "Source",
  return_type := "morphism",
  dual_operation := "IsomorphismFromObjectToInternalHom",
),

IsomorphismFromCoexponentialToObjectWithGivenCoexponential := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "s" ], [ "s", "a" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromObjectToInternalHomWithGivenInternalHom",
  dual_arguments_reversed := false,
),

) );

CAP_INTERNAL_ENHANCE_NAME_RECORD( COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD );

CAP_INTERNAL_GENERATE_DOCUMENTATION_FROM_METHOD_NAME_RECORD(
    COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD,
    "Toposes",
    "CocartesianCoclosedCategories.autogen.gd",
    "Cocartesian Categories",
    "Add-methods"
);

CAP_INTERNAL_REGISTER_METHOD_NAME_RECORD_OF_PACKAGE( COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD, "Toposes" );

CAP_INTERNAL_INSTALL_ADDS_FROM_RECORD( COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD );
