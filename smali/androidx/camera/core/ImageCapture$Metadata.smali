.class public final Landroidx/camera/core/ImageCapture$Metadata;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation


# instance fields
.field private mIsReversedHorizontal:Z

.field private mIsReversedVertical:Z

.field private mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 1853
    iget-object p0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public isReversedHorizontal()Z
    .locals 0

    .line 1816
    iget-boolean p0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    return p0
.end method

.method public isReversedVertical()Z
    .locals 0

    .line 1834
    iget-boolean p0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    return p0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 1862
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setReversedHorizontal(Z)V
    .locals 0

    .line 1825
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    return-void
.end method

.method public setReversedVertical(Z)V
    .locals 0

    .line 1843
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    return-void
.end method
