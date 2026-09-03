.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;
.source "InspiredBean.java"


# instance fields
.field private isLocked:Z

.field private skinId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;-><init>(IIZ)V

    .line 17
    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->skinId:I

    .line 18
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->title:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isLocked:Z

    return-void
.end method


# virtual methods
.method public getSkinId()I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->skinId:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public isLocked()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isLocked:Z

    return p0
.end method

.method public setLocked(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isLocked:Z

    return-void
.end method

.method public setSkinId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->skinId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->title:Ljava/lang/String;

    return-void
.end method
