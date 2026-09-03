.class public Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;
.super Lcn/nubia/redmagickyi/unity/UnityApplication;
.source "RedmagickyiApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;,
        Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RedmagickyiApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/UnityApplication;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPowerChargeTypeface()Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->access$100()Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTypeface()Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    monitor-enter v0

    .line 197
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->access$000()Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;
    .locals 1

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    monitor-enter v0

    .line 205
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initAccount()V
    .locals 2

    .line 115
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->getInstance()Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->register(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->getInstance()Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;)V

    invoke-virtual {v0, v1}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->setAccountChangeInterface(Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;)V

    .line 124
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->getAccountInfo(Landroid/content/Context;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    :cond_0
    return-void
.end method

.method private initDensityCustomer()V
    .locals 1

    .line 129
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->setCustom(Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;)V

    return-void
.end method

.method private initNetworkEnvironment()V
    .locals 3

    .line 78
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->setEnv(Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;)V

    .line 84
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->getEnv()Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    if-ne v0, v1, :cond_0

    .line 86
    sget-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->RELEASE:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    invoke-static {v0}, Lcn/nubia/nbaccount/NbAccountEnvironment;->setEnv(Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->getEnv()Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->TEST:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    if-ne v0, v1, :cond_1

    .line 88
    sget-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->TEST:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    invoke-static {v0}, Lcn/nubia/nbaccount/NbAccountEnvironment;->setEnv(Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;)V

    .line 91
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->init(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->getEnv()Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getKeywordHostName()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->init(Landroid/content/Context;ZZ[Ljava/lang/String;)V

    return-void
.end method

.method private initUnity()V
    .locals 1

    .line 98
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalRom()Z

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setPreferTtsToPlayAudio(Z)V

    .line 100
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setEventListener(Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;)V

    return-void
.end method

.method public static declared-synchronized isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z
    .locals 1

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 214
    invoke-super {p0}, Lcn/nubia/redmagickyi/unity/UnityApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcn/nubia/redmagickyi/unity/UnityApplication;->onCreate()V

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->initUnity()V

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->initAccount()V

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->initDensityCustomer()V

    .line 52
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Application;)Landroid/util/DisplayMetrics;

    .line 53
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->initNetworkEnvironment()V

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->init(Landroid/content/Context;Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/LocationUtils;->init(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/receiver/WallPaperChangedReceiver;->registerReceiver(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".morachat."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/aimodel/AIClient;->connect(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/payment/BillingServiceManager;->connect(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/RecordingListener;->registerRecordingState(Landroid/content/Context;)V

    .line 68
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->currentProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->connect(Landroid/content/Context;)Z

    .line 73
    :cond_2
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcn/nubia/redmagickyi/unity/UnityApplication;->onTerminate()V

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->deinit(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->release()V

    .line 182
    invoke-static {}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->getInstance()Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->unregister(Landroid/content/Context;)V

    .line 184
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->deInit()V

    .line 185
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".morachat."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimodel/AIClient;->disconnect()V

    .line 188
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/payment/BillingServiceManager;->disconnect()V

    .line 189
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/RecordingListener;->unregisterRecordingState(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".morachat.window.gameagent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 191
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->disconnect()V

    :cond_1
    return-void
.end method
