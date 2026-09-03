.class public final Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;
.super Ljava/lang/Object;
.source "WallPaperSkinConfigOffline.java"


# instance fields
.field private skinId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->skinId:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;
    .locals 2

    .line 13
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;

    return-object p0
.end method


# virtual methods
.method public getSkinId()I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->skinId:I

    return p0
.end method

.method public setSkinId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->skinId:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 17
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
