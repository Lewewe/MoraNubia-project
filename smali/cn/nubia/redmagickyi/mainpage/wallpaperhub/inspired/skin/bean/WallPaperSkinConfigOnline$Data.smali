.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;
.super Ljava/lang/Object;
.source "WallPaperSkinConfigOnline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private active:Z

.field private skinId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->skinId:I

    .line 18
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->accountName:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->active:Z

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public getSkinId()I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->skinId:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->active:Z

    return p0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->active:Z

    return-void
.end method

.method public setSkinId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->skinId:I

    return-void
.end method
