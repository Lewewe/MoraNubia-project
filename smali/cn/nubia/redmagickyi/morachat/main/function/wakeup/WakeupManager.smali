.class public Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;
.super Lcom/zte/wakeup/SnapDragonWakeupAction;
.source "WakeupManager.java"


# static fields
.field public static final ACTION_QUIT:Ljava/lang/String; = "cn.nubia.redmagickyi.action.QUIT"

.field public static final ACTION_SETTINGS_CHANGED:Ljava/lang/String; = "intent.action.redmagickyi.wakeup.settings.changed"

.field public static final ACTION_WAKEUP:Ljava/lang/String; = "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

.field public static final KEY_SETTINGS_CHANGED_PROPERTY:Ljava/lang/String; = "propertyKey"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static volatile instance:Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/zte/wakeup/SnapDragonWakeupAction;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static createQuitIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.redmagickyi.action.QUIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    :cond_0
    const-string p1, "type"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createWakeupIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    :cond_0
    const-string p1, "type"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;
    .locals 3

    .line 25
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    return-object v0
.end method

.method private sendOnSettingsChanged(Ljava/lang/String;)V
    .locals 1

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sendOnSettingsChanged, propertyKey = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SnapDragonWakeup"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p0, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.wakeup.settings.changed"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v0, "propertyKey"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public canStartWakeup()Z
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->canStartWakeup()Z

    move-result p0

    return p0
.end method

.method public hasTrainedFile()Z
    .locals 1

    .line 59
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->hasTrainedFile()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasTrainedFilePdk()Z
    .locals 1

    .line 68
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->hasTrainedFilePdk()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasTrainedFileUdk(Ljava/lang/String;)Z
    .locals 1

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lcom/zte/wakeup/SnapDragonWakeupAction;->hasTrainedFileUdk(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnableSystemVoiceAssistant()Z
    .locals 1

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->isEnableSystemVoiceAssistant()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected putSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/zte/wakeup/SnapDragonWakeupAction;->putSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->sendOnSettingsChanged(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method protected putSystemSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/zte/wakeup/SnapDragonWakeupAction;->putSystemSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->sendOnSettingsChanged(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method protected startWakeupService()V
    .locals 1

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->startWakeupService()V

    :cond_0
    return-void
.end method
