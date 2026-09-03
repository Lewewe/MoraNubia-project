.class public Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;
.super Ljava/lang/Object;
.source "CommonSkinIDs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;,
        Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Demi;
    }
.end annotation


# static fields
.field private static sPresetSkinIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSkinId()I
    .locals 2

    .line 130
    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSupportedDigitalHuman()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ed

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x3e8

    return v0
.end method

.method public static declared-synchronized getPresetSkinIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;

    monitor-enter v0

    .line 105
    :try_start_0
    const-string v1, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSupportedDigitalHuman()Z

    move-result v1

    const/16 v3, 0x3ed

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    if-nez v1, :cond_2

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    if-nez v1, :cond_2

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    if-nez v1, :cond_2

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    :goto_0
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->sPresetSkinIds:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static is2D(I)Z
    .locals 4

    .line 138
    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-eqz v0, :cond_1

    if-lt p0, v3, :cond_0

    const/16 v0, 0x7d0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-lt p0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method
