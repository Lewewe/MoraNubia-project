.class public Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;
.super Ljava/lang/Object;
.source "AIAssistantSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AIAssistantSettingsManager"

.field public static final URI_DIGITAL_HUMAN:Landroid/net/Uri;

.field private static final VOICESTRATEGY_ALWAYS_PLAY:I = 0x1

.field private static final VOICESTRATEGY_DEFAULT:I = 0x0

.field private static final VOICESTRATEGY_NEVER_PLAY:I = 0x2

.field private static final sChildObservers:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "content://com.zte.aiassistant.digitalhuman.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->URI_DIGITAL_HUMAN:Landroid/net/Uri;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$1;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sChildObservers:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 1

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sChildObservers:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object v0
.end method

.method public static gotoDigitalHumanSettings(Landroid/content/Context;)V
    .locals 2

    .line 90
    const-string v0, "com.zte.aiassistant.action.DIGITAL_HUMAN_SETTING"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isActionSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :cond_0
    const-string p0, "AIAssistantSettingsManager"

    const-string v0, "No Activity found to handle Intent { act=com.zte.aiassistant.action.DIGITAL_HUMAN_SETTING }"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static gotoMainSettings(Landroid/content/Context;)V
    .locals 2

    .line 77
    const-string v0, "com.zte.aiassistant.SETTINGS_SEARCH"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isActionSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :cond_0
    const-string p0, "AIAssistantSettingsManager"

    const-string v0, "No Activity found to handle Intent { act=com.zte.aiassistant.SETTINGS_SEARCH }"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isDigitalHumanStatusOn()Z
    .locals 3

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "is_enable_digital_human"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMute()Z
    .locals 7

    .line 55
    const-string v0, "AIAssistantSettingsManager"

    const-string v1, "getVoiceStrategy result: "

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 58
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->URI_DIGITAL_HUMAN:Landroid/net/Uri;

    const-string v5, "getVoiceStrategy"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 60
    const-string v4, "voiceStrategy"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 64
    :cond_2
    const-string v1, "getVoiceStrategy failed, Not Bundle found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVoiceStrategy failed, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public static declared-synchronized registerContentObserver(Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;)V
    .locals 5

    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    if-nez v1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.zte.aiassistant"

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/util/CommonUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 101
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->URI_DIGITAL_HUMAN:Landroid/net/Uri;

    new-instance v3, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    invoke-direct {v3}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;-><init>()V

    sput-object v3, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 103
    :try_start_2
    sput-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    .line 106
    :cond_0
    :goto_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sChildObservers:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unregisterContentObserver(Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;)V
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sChildObservers:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 112
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 114
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_0
    :try_start_2
    sput-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 116
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 118
    :goto_1
    :try_start_4
    sput-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->sMainObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    .line 119
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
