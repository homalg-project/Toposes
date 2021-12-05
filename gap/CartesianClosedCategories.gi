# THIS FILE WAS AUTOMATICALLY GENERATED
# FROM MonoidalCategories v2021.12-01
# USING CategoryConstructor v2021.12-02

# SPDX-License-Identifier: GPL-2.0-or-later
# Toposes: Elementary toposes
#
# Implementations
#

##
AddDerivationToCAP( IsomorphismFromExponentialToObject,

  function( cat, object )
    
    return IsomorphismFromExponentialToObjectWithGivenExponential( cat, object, object );
    
end : CategoryFilter := IsSkeletalCategory,
      Description := "calling the WithGiven operation in a skeletal setting" );

##
AddDerivationToCAP( IsomorphismFromObjectToExponential,

  function( cat, object )
    
    return IsomorphismFromObjectToExponentialWithGivenExponential( cat, object, object );
    
end : CategoryFilter := IsSkeletalCategory,
      Description := "calling the WithGiven operation in a skeletal setting" );

####################################
# Convenience Methods
####################################

##
InstallMethod( Exponential,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  ExponentialOnObjects );

##
InstallMethod( Exponential,
        [ IsCapCategoryMorphism, IsCapCategoryMorphism ],
        
  ExponentialOnMorphisms );

##
InstallMethod( Exponential,
        [ IsCapCategoryObject, IsCapCategoryMorphism ],
        
  function( a, beta )
    
    return ExponentialOnMorphisms( IdentityMorphism( a ), beta );
    
end );

##
InstallMethod( Exponential,
        [ IsCapCategoryMorphism, IsCapCategoryObject ],
        
  function( alpha, b )
    
    return ExponentialOnMorphisms( alpha, IdentityMorphism( b ) );
    
end );