# SPDX-License-Identifier: GPL-2.0-or-later
# Toposes: Elementary toposes
#

gap> LoadPackage( "FinSetsForCAP", "2022.11-06", false );
true
gap> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) );
277
gap> BooleanAlgebras := Opposite( SkeletalFinSets );
Opposite( SkeletalFinSets )
gap> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) );
247
gap> Opposite( BooleanAlgebras );
SkeletalFinSets
gap> FS := Opposite( WrapperCategory( BooleanAlgebras, rec( ) ) );
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )
gap> Length( ListInstalledOperationsOfCategory( FS ) );
247
