#! @Chapter Examples and Tests

#! @Section Opposite category

#! @Example

LoadPackage( "Toposes", false );
#! true
LoadPackage( "FinSetsForCAP", ">= 2022.06-02", false );
#! true
CapCategorySwitchLogicOn( SkeletalFinSets );
op := Opposite( SkeletalFinSets );;
ListKnownCategoricalProperties( op );
#! [ "IsBicartesianCategory", "IsBicartesianCoclosedCategory",
#!   "IsCartesianCategory", "IsCocartesianCategory",
#!   "IsCocartesianCoclosedCategory", "IsCodistributiveCocartesianCategory",
#!   "IsEquippedWithHomomorphismStructure", "IsFiniteCocompleteCategory",
#!   "IsFiniteCompleteCategory", "IsSkeletalCategory" ]
#! @EndExample
