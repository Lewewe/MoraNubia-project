.class public Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;
.super Ljava/lang/Object;
.source "ModuleCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/ModuleCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AIAgent"
.end annotation


# static fields
.field private static isEnableHandleNLPForGameAgent:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isEnableAiAssistantWindow()Z
    .locals 1

    .line 379
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isDemiInter()Z

    move-result v0

    return v0
.end method

.method public static isEnableFullScreenAccompany()Z
    .locals 1

    .line 301
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEnableHandleLowPowerWakeupForGameAgent()Z
    .locals 4

    .line 327
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isSupportedLowPowerWakeupForGameAgent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 330
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wakeup_status_for_gameagent"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public static isEnableHandleNLPForGameAgent()Z
    .locals 2

    .line 359
    sget-object v0, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleNLPForGameAgent:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 360
    const-string v0, "ZTE_FEATURE_GAME_VOICE_ASSIST"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/FeatureUtils;->getZteFeature(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleNLPForGameAgent:Ljava/lang/Boolean;

    .line 362
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableNLP()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleNLPForGameAgent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isEnableLowPowerWakeup()Z
    .locals 1

    .line 313
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isSnapDragonWakeup()Z

    move-result v0

    return v0
.end method

.method public static isEnableNLP()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isEnablePlayMotion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isGameAgentWindow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isOnlyFullScreenChatForAIAgent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedLowPowerWakeupForGameAgent()Z
    .locals 1

    .line 320
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    return v0
.end method

.method public static isWaitAsrResultAfterReleased()Z
    .locals 1

    .line 370
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalRom()Z

    move-result v0

    return v0
.end method

.method public static setEnableHandleLowPowerWakeupForGameAgent(Z)V
    .locals 2

    .line 337
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wakeup_status_for_gameagent"

    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
