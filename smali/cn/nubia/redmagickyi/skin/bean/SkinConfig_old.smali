.class public final Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;
.super Ljava/lang/Object;
.source "SkinConfig_old.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private alarmBgRes:I

.field private skinId:I

.field private thumbnailIconRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->skinId:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->skinId:I

    .line 25
    iput p2, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->thumbnailIconRes:I

    .line 26
    iput p3, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->alarmBgRes:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;
    .locals 2

    .line 30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;

    return-object p0
.end method


# virtual methods
.method public getAlarmBgRes()I
    .locals 0

    .line 54
    iget p0, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->alarmBgRes:I

    return p0
.end method

.method public getSkinId()I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->skinId:I

    return p0
.end method

.method public getThumbnailIconRes()I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->thumbnailIconRes:I

    return p0
.end method

.method public setAlarmBgRes(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->alarmBgRes:I

    return-void
.end method

.method public setSkinId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->skinId:I

    return-void
.end method

.method public setThumbnailIconRes(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->thumbnailIconRes:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
