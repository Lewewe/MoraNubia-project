.class public Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Broadcast;
.super Ljava/lang/Object;
.source "ModuleCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Broadcast"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isSupportCF()Z
    .locals 7

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 63
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "game_assist_white_list_redmagic_broadcast"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getRedMagicOSVersion(Landroid/content/Context;)D

    move-result-wide v3

    .line 65
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isRedmagicOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v5, 0x4016000000000000L    # 5.5

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 67
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v5, 0x402a000000000000L    # 13.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 69
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public static final isSupportCODM()Z
    .locals 7

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 81
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "game_assist_white_list_redmagic_broadcast"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getRedMagicOSVersion(Landroid/content/Context;)D

    move-result-wide v3

    .line 83
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isRedmagicOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 85
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v5, 0x402a000000000000L    # 13.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 87
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public static final isSupportGENSHIN()Z
    .locals 7

    .line 44
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "game_assist_white_list_redmagic_broadcast"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getRedMagicOSVersion(Landroid/content/Context;)D

    move-result-wide v3

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isRedmagicOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v5, 0x4016000000000000L    # 5.5

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 49
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v5, 0x402a000000000000L    # 13.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 51
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public static final isSupportLOLM()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
