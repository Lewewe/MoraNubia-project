.class public Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;
.super Lcn/nubia/redmagickyi/unity/UnityApplication;
.source "DigitalHumanApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/UnityApplication;-><init>()V

    return-void
.end method

.method private initNetworkEnvironment()V
    .locals 1

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method private initUnity()V
    .locals 1

    .line 19
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalRom()Z

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setPreferTtsToPlayAudio(Z)V

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setEventListener(Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 12
    invoke-super {p0}, Lcn/nubia/redmagickyi/unity/UnityApplication;->onCreate()V

    .line 13
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;->initUnity()V

    .line 14
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;->initNetworkEnvironment()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcn/nubia/redmagickyi/unity/UnityApplication;->onTerminate()V

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->deinit(Landroid/content/Context;)V

    return-void
.end method
