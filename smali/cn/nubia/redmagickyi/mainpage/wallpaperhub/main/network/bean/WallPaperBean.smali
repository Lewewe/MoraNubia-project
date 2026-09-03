.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;
.super Ljava/lang/Object;
.source "WallPaperBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASSETS_PROTOCOL:Ljava/lang/String; = "Assets://"


# instance fields
.field private newAdd:Z

.field private type:I

.field private wallpaperId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->wallpaperId:I

    .line 18
    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->type:I

    .line 19
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->newAdd:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    .line 55
    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->wallpaperId:I

    iget v3, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->wallpaperId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->type:I

    iget v3, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->type:I

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->newAdd:Z

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->newAdd:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getType()I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->type:I

    return p0
.end method

.method public getWallpaperId()I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->wallpaperId:I

    return p0
.end method

.method public isNewAdd()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->newAdd:Z

    return p0
.end method

.method public setNewAdd(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->newAdd:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->type:I

    return-void
.end method

.method public setWallpaperId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->wallpaperId:I

    return-void
.end method
