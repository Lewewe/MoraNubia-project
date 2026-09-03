.class public final Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
.super Ljava/lang/Object;
.source "SkinConfigOffline.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private skinId:I

.field private thumbnailIconRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->skinId:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->skinId:I

    .line 19
    iput p2, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->thumbnailIconRes:I

    .line 20
    iput-object p3, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->name:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->desc:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    .locals 2

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    return-object p0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSkinId()I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->skinId:I

    return p0
.end method

.method public getThumbnailIconRes()I
    .locals 0

    .line 42
    iget p0, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->thumbnailIconRes:I

    return p0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->desc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->name:Ljava/lang/String;

    return-void
.end method

.method public setSkinId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->skinId:I

    return-void
.end method

.method public setThumbnailIconRes(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->thumbnailIconRes:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
