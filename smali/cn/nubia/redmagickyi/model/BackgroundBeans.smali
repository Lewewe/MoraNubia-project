.class public Lcn/nubia/redmagickyi/model/BackgroundBeans;
.super Ljava/lang/Object;
.source "BackgroundBeans.java"


# instance fields
.field bgId:I

.field private bgName:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;->selected:Z

    return-void
.end method


# virtual methods
.method public getBgId()I
    .locals 0

    .line 8
    iget p0, p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;->bgId:I

    return p0
.end method

.method public getBgName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;->bgName:Ljava/lang/String;

    return-object p0
.end method

.method public isSelected()Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;->selected:Z

    return p0
.end method

.method public setBgId(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;->bgId:I

    return-void
.end method

.method public setBgName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;->bgName:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/model/BackgroundBeans;->selected:Z

    return-void
.end method
