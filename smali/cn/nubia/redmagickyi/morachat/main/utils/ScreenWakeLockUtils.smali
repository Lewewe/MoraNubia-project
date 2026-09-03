.class public Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;
.super Ljava/lang/Object;
.source "ScreenWakeLockUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenWakeLockUtils"

.field private static reLightLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized lightScreen(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;

    monitor-enter v0

    .line 17
    :try_start_0
    const-string v1, "ScreenWakeLockUtils"

    const-string v2, "lightScreen----start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-le v1, v2, :cond_0

    .line 22
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->lightScreenOnU(Landroid/os/PowerManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x2000001a

    goto :goto_0

    :cond_0
    const v1, 0x3000001a

    .line 28
    :goto_0
    :try_start_1
    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->reLightLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 29
    const-string v2, "ScreenWakeLockUtils"

    const-string v3, "lightScreen----newWakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v2, "VoiceAssistantService"

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->reLightLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 34
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->reLightLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-nez p0, :cond_3

    .line 35
    const-string p0, "ScreenWakeLockUtils"

    const-string v1, "lightScreen----acquire WakeLock"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->reLightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 39
    :try_start_2
    const-string v1, "ScreenWakeLockUtils"

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "Unknown exception"

    :goto_1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_3
    :goto_2
    const-string p0, "ScreenWakeLockUtils"

    const-string v1, "lightScreen----end"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized lightScreenOnU(Landroid/os/PowerManager;)V
    .locals 7

    const-string v0, "Error invoking wakeUp method: "

    const-class v1, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "wakeUp"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "voice_assistant"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p0, "ScreenWakeLockUtils"

    const-string v2, "lightScreenOnU----wakeUp"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 53
    :try_start_1
    const-string v2, "ScreenWakeLockUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized unLightScreen()V
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->reLightLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "ScreenWakeLockUtils"

    const-string v2, "releaseLightScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->reLightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    .line 64
    sput-object v1, Lcn/nubia/redmagickyi/morachat/main/utils/ScreenWakeLockUtils;->reLightLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
