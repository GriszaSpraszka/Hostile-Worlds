/**
 * Copyright 1998-2010 Epic Games, Inc. All Rights Reserved.
 */
class WindPointSource extends Info
	native
	showcategories(Movement)
	placeable;

var() const editconst WindPointSourceComponent	Component;

cpptext
{
	// AActor interface.
	virtual void EditorApplyScale(const FVector& DeltaScale, const FMatrix& ScaleMatrix, const FVector* PivotLocation, UBOOL bAltDown, UBOOL bShiftDown, UBOOL bCtrlDown);
}

defaultproperties
{
	Begin Object Class=DrawLightRadiusComponent Name=DrawSphereComponent0
		SphereColor=(R=173,G=239,B=231,A=255)
		SphereSides=32
		AlwaysLoadOnClient=False
		AlwaysLoadOnServer=False
		AbsoluteScale=TRUE
	End Object
	Components.Add(DrawSphereComponent0)

	Begin Object Class=WindPointSourceComponent Name=WindPointSourceComponent0
		PreviewRadiusComponent=DrawSphereComponent0
	End Object
	Component=WindPointSourceComponent0
	Components.Add(WindPointSourceComponent0)

	bNoDelete=true
}