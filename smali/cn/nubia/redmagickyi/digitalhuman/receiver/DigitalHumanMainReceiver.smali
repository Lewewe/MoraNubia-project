.class public Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DigitalHumanMainReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AiAgentMainReceiver"

.field private static volatile sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;


# instance fields
.field private listener:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method protected static getContext()Landroid/content/Context;
    .locals 1

    .line 63
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceiver(Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;)V
    .locals 3

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    .line 31
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->setListener(Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;)V

    .line 32
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 38
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->setListener(Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;)V

    :goto_1
    return-void
.end method

.method public static unregisterReceiver()V
    .locals 3

    .line 43
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 47
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    goto :goto_2

    :goto_1
    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->sInstance:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;

    .line 50
    throw v1

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method protected getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    const-string v0, "intent.action.redmagickyi.digitalhuman.settings.changed"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getListener()Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->listener:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;

    return-object p0
.end method

.method protected handleAiAgentSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 86
    const-string v0, "intent.action.redmagickyi.digitalhuman.settings.changed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    const-string v0, "propertyKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->getListener()Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->getListener()Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;->onDigitalHumanSettingsChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1
.end method

.method public handleMessages(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->handleAiAgentSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiAgentMainReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->handleMessages(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->listener:Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;

    return-void
.end method
