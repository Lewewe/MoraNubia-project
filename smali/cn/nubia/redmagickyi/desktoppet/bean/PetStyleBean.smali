.class public Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;
.super Ljava/lang/Object;
.source "PetStyleBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;
    }
.end annotation


# instance fields
.field private skinId:I

.field private techcenterThumbnailResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->skinId:I

    .line 13
    iput p2, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->techcenterThumbnailResId:I

    return-void
.end method


# virtual methods
.method public getSkinId()I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->skinId:I

    return p0
.end method

.method public getTechcenterThumbnailResId()I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->techcenterThumbnailResId:I

    return p0
.end method

.method public setSkinId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->skinId:I

    return-void
.end method

.method public setTechcenterThumbnailResId(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->techcenterThumbnailResId:I

    return-void
.end method
