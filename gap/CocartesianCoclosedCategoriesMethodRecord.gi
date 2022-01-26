# THIS FILE WAS AUTOMATICALLY GENERATED

# SPDX-License-Identifier: GPL-2.0-or-later
# Toposes: Elementary toposes
#
# Implementations
#

InstallValue( COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD, rec(

CoexponentialOnObjects := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "i" ] ],
  return_type := "object",
  dual_operation := "ExponentialOnObjects",
  dual_arguments_reversed := true,
),

CoexponentialOnMorphisms := rec(
  filter_list := [ "category", "morphism", "morphism" ],
  io_type := [ [ "alpha", "beta" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, Source( alpha ), Range( beta ) )",
  output_range_getter_string := "CoexponentialOnObjects( cat, Range( alpha ), Source( beta ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "ExponentialOnMorphisms",
  dual_arguments_reversed := true,
),

CoexponentialOnMorphismsWithGivenCoexponentials := rec(
  filter_list := [ "category", "object", "morphism", "morphism", "object" ],
  io_type := [ [ "s", "alpha", "beta", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "ExponentialOnMorphismsWithGivenExponentials",
  dual_arguments_reversed := true,
),

CocartesianEvaluationMorphism := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "a", "r" ] ],
  output_source_getter_string := "a",
  output_range_getter_string := "BinaryCoproduct( cat, CoexponentialOnObjects( cat, a, b ), b )",
  with_given_object_position := "Range",
  return_type := "morphism",
  dual_operation := "CartesianEvaluationMorphism",
  dual_arguments_reversed := true,
),

CocartesianEvaluationMorphismWithGivenRange := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "r" ], [ "a", "r" ] ],
  return_type := "morphism",
  dual_operation := "CartesianEvaluationMorphismWithGivenSource",
  dual_preprocessor_func := { cat, a, b, r } -> [ Opposite( cat ), Opposite( b ), Opposite( a ), Opposite( r ) ],
  dual_arguments_reversed := false,
),

CocartesianCoevaluationMorphism := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "s", "a" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, BinaryCoproduct( cat, a, b ), b )",
  output_range_getter_string := "a",
  with_given_object_position := "Source",
  return_type := "morphism",
  dual_operation := "CartesianCoevaluationMorphism",
  dual_arguments_reversed := false,
),

CocartesianCoevaluationMorphismWithGivenSource := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "s" ], [ "s", "a" ] ],
  return_type := "morphism",
  dual_operation := "CartesianCoevaluationMorphismWithGivenRange",
  dual_arguments_reversed := false,
),

CoproductToCoexponentialAdjunctionMap := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "c", "b", "g" ], [ "i", "c" ] ],
  return_type := "morphism",
  dual_operation := "DirectProductToExponentialAdjunctionMap",
  dual_arguments_reversed := false,
),

CoexponentialToCoproductAdjunctionMap := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "a", "b", "f" ], [ "a", "t" ] ],
  return_type := "morphism",
  dual_operation := "ExponentialToDirectProductAdjunctionMap",
  dual_preprocessor_func := { cat, a, b, f } -> [ Opposite( cat ), Opposite( b ), Opposite( a ), Opposite( f ) ],
  dual_arguments_reversed := false,
),

CocartesianPreCoComposeMorphism := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "c" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, c )",
  output_range_getter_string := "BinaryCoproduct( cat, CoexponentialOnObjects( cat, b, c ), CoexponentialOnObjects( cat, a, b ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CartesianPreComposeMorphism",
  dual_arguments_reversed := true,
),

CocartesianPreCoComposeMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "c", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "CartesianPreComposeMorphismWithGivenObjects",
  dual_arguments_reversed := true,
),

CocartesianPostCoComposeMorphism := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "a", "b", "c" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, c )",
  output_range_getter_string := "BinaryCoproduct( cat, CoexponentialOnObjects( cat, a, b ), CoexponentialOnObjects( cat, b, c ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CartesianPostComposeMorphism",
  dual_arguments_reversed := true,
),

CocartesianPostCoComposeMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "c", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "CartesianPostComposeMorphismWithGivenObjects",
  dual_arguments_reversed := true,
),

CocartesianDualOnObjects := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "acd" ] ],
  return_type := "object",
  dual_operation := "CartesianDualOnObjects",
),

CocartesianDualOnMorphisms := rec(
  filter_list := [ "category", "morphism" ],
  io_type := [ [ "alpha" ], [ "s", "r" ] ],
  output_source_getter_string := "CocartesianDualOnObjects( cat, Range( alpha ) )",
  output_range_getter_string := "CocartesianDualOnObjects( cat, Source( alpha ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CartesianDualOnMorphisms",
),

CocartesianDualOnMorphismsWithGivenCocartesianDuals := rec(
  filter_list := [ "category", "object", "morphism", "object" ],
  io_type := [ [ "s", "alpha", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "CartesianDualOnMorphismsWithGivenCartesianDuals",
  dual_arguments_reversed := true,
),

CocartesianEvaluationForCocartesianDual := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "s", "r" ] ],
  output_source_getter_string := "InitialObject( cat )",
  output_range_getter_string := "BinaryCoproduct( cat, CocartesianDualOnObjects( cat, a ), a )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "CartesianEvaluationForCartesianDual",
),

CocartesianEvaluationForCocartesianDualWithGivenCoproduct := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "s", "a", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "CartesianEvaluationForCartesianDualWithGivenDirectProduct",
  dual_arguments_reversed := true,
),

MorphismFromCocartesianBidual := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "s", "a" ] ],
  output_source_getter_string := "CocartesianDualOnObjects( cat, CocartesianDualOnObjects( cat, a ) )",
  output_range_getter_string := "a",
  with_given_object_position := "Source",
  return_type := "morphism",
  dual_operation := "MorphismToCartesianBidual",
),

MorphismFromCocartesianBidualWithGivenCocartesianBidual := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "s" ], [ "s", "a" ] ],
  return_type := "morphism",
  dual_operation := "MorphismToCartesianBidualWithGivenCartesianBidual",
  dual_arguments_reversed := false,
),

CoexponentialCoproductCompatibilityMorphism := rec(
  filter_list := [ "category", "list_of_objects" ],
  input_arguments_names := [ "cat", "list" ],
  output_source_getter_string := "CoexponentialOnObjects( cat, BinaryCoproduct( cat, list[1], list[2] ), BinaryCoproduct( cat, list[3], list[4] ) )",
  output_range_getter_string := "BinaryCoproduct( cat, CoexponentialOnObjects( cat, list[1], list[3] ), CoexponentialOnObjects( cat, list[2], list[4] ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "DirectProductExponentialCompatibilityMorphism",
  dual_preprocessor_func := { cat, list } -> [ Opposite( cat ), [ Opposite( list[3] ), Opposite( list[1] ), Opposite( list[4] ), Opposite( list[2] ) ] ],
  dual_arguments_reversed := false,
),

CoexponentialCoproductCompatibilityMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "list_of_objects", "object" ],
  input_arguments_names := [ "cat", "source", "list", "range" ],
  output_source_getter_string := "source",
  output_range_getter_string := "range",
  return_type := "morphism",
  dual_operation := "DirectProductExponentialCompatibilityMorphismWithGivenObjects",
  dual_preprocessor_func :=
    { cat, s, list, r } -> [ Opposite( cat ), Opposite( r ), [ Opposite( list[3] ), Opposite( list[1] ), Opposite( list[4] ), Opposite( list[2] ) ], Opposite( s ) ],
  dual_arguments_reversed := false,
),

CocartesianDualityCoproductCompatibilityMorphism := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "s", "r" ] ],
  output_source_getter_string := "CocartesianDualOnObjects( cat, BinaryCoproduct( cat, a, b ) )",
  output_range_getter_string := "BinaryCoproduct( cat, CocartesianDualOnObjects( cat, a ), CocartesianDualOnObjects( cat, b ) )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "DirectProductCartesianDualityCompatibilityMorphism",
  dual_arguments_reversed := false,
),

CocartesianDualityCoproductCompatibilityMorphismWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "DirectProductCartesianDualityCompatibilityMorphismWithGivenObjects",
  dual_preprocessor_func := { cat, s, a, b, r} -> [ Opposite( cat ), Opposite( r ), Opposite( a ), Opposite( b ), Opposite( s ) ],
  dual_arguments_reversed := false,
),

MorphismFromCoexponentialToCoproduct := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "b" ], [ "s", "r" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, b )",
  output_range_getter_string := "BinaryCoproduct( cat, CocartesianDualOnObjects( cat, b ), a )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "MorphismFromDirectProductToExponential",
  dual_arguments_reversed := true,
),

MorphismFromCoexponentialToCoproductWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object", "object" ],
  io_type := [ [ "s", "a", "b", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "MorphismFromDirectProductToExponentialWithGivenObjects",
  dual_arguments_reversed := true,
),

IsomorphismFromCocartesianDualToCoexponential := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "d", "i" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromExponentialToCartesianDual",
),

IsomorphismFromCoexponentialToCocartesianDual := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "i", "d" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, InitialObject( cat ), a )",
  output_range_getter_string := "CocartesianDualOnObjects( cat, a )",
  with_given_object_position := "both",
  return_type := "morphism",
  dual_operation := "IsomorphismFromCartesianDualToExponential",
),

IsomorphismFromCoexponentialToCocartesianDualWithGivenObjects := rec(
  filter_list := [ "category", "object", "object", "object" ],
  io_type := [ [ "s", "a", "r" ], [ "s", "r" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromCartesianDualToExponentialWithGivenObjects",
  dual_arguments_reversed := true,
),

UniversalPropertyOfCocartesianDual := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "t", "a", "alpha" ], [ "d", "t" ] ],
  return_type := "morphism",
  dual_operation := "UniversalPropertyOfCartesianDual",
  dual_arguments_reversed := false,
),

CocartesianLambdaIntroduction := rec(
  filter_list := [ "category", "morphism" ],
  io_type := [ [ "alpha" ], [ "u", "i" ] ],
  return_type := "morphism",
  dual_operation := "CartesianLambdaIntroduction",
),

CocartesianLambdaElimination := rec(
  filter_list := [ "category", "object", "object", "morphism" ],
  io_type := [ [ "a", "b", "alpha" ], [ "a", "b" ] ],
  return_type := "morphism",
  dual_operation := "CartesianLambdaElimination",
  dual_preprocessor_func := { cat, a, b, alpha } -> [ Opposite( cat ), Opposite( b ), Opposite( a ), Opposite( alpha ) ],
  dual_arguments_reversed := false,
),

IsomorphismFromObjectToCoexponential := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "a", "r" ] ],
  output_source_getter_string := "a",
  output_range_getter_string := "CoexponentialOnObjects( cat, a, InitialObject( cat ) )",
  with_given_object_position := "Range",
  return_type := "morphism",
  dual_operation := "IsomorphismFromExponentialToObject",
),

IsomorphismFromObjectToCoexponentialWithGivenCoexponential := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "r" ], [ "a", "r" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromExponentialToObjectWithGivenExponential",
  dual_arguments_reversed := false,
),

IsomorphismFromCoexponentialToObject := rec(
  filter_list := [ "category", "object" ],
  io_type := [ [ "a" ], [ "s", "a" ] ],
  output_source_getter_string := "CoexponentialOnObjects( cat, a, InitialObject( cat ) )",
  output_range_getter_string := "a",
  with_given_object_position := "Source",
  return_type := "morphism",
  dual_operation := "IsomorphismFromObjectToExponential",
),

IsomorphismFromCoexponentialToObjectWithGivenCoexponential := rec(
  filter_list := [ "category", "object", "object" ],
  io_type := [ [ "a", "s" ], [ "s", "a" ] ],
  return_type := "morphism",
  dual_operation := "IsomorphismFromObjectToExponentialWithGivenExponential",
  dual_arguments_reversed := false,
),

) );

# collect closed and coclosed operations
BindGlobal( "CARTESIAN_CLOSED_AND_COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD", rec( ) );

Perform( RecNames( CARTESIAN_CLOSED_CATEGORIES_METHOD_NAME_RECORD ), function ( name )
    
    CARTESIAN_CLOSED_AND_COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD.(name) := CARTESIAN_CLOSED_CATEGORIES_METHOD_NAME_RECORD.(name);
    
end );

Perform( RecNames( COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD ), function ( name )
    
    CARTESIAN_CLOSED_AND_COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD.(name) := COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD.(name);
    
end );

CAP_INTERNAL_ENHANCE_NAME_RECORD( CARTESIAN_CLOSED_AND_COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD );

CAP_INTERNAL_GENERATE_DOCUMENTATION_FROM_METHOD_NAME_RECORD(
    CARTESIAN_CLOSED_CATEGORIES_METHOD_NAME_RECORD,
    "Toposes",
    "CartesianClosedCategories.autogen.gd", "Cartesian Categories",
    "Add-methods"
);

CAP_INTERNAL_GENERATE_DOCUMENTATION_FROM_METHOD_NAME_RECORD(
    COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD,
    "Toposes",
    "CocartesianCoclosedCategories.autogen.gd", "Cocartesian Categories",
    "Add-methods"
);

CAP_INTERNAL_REGISTER_METHOD_NAME_RECORD_OF_PACKAGE( CARTESIAN_CLOSED_AND_COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD, "Toposes" );

CAP_INTERNAL_INSTALL_ADDS_FROM_RECORD( CARTESIAN_CLOSED_AND_COCARTESIAN_COCLOSED_CATEGORIES_METHOD_NAME_RECORD );
