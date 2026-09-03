.class public Lcn/nubia/redmagickyi/util/CPUBoostManager;
.super Ljava/lang/Object;
.source "CPUBoostManager.java"


# static fields
.field private static final DEFAULT_TYPE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CPUBoostManager"

.field private static final TYPE_LAUNCHER_START_APP:I = 0x7

.field private static slsZperfCube:Ljava/lang/Boolean;


# instance fields
.field private boostBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->DEFAULT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zPerfCube()Z
    .locals 2

    .line 69
    sget-object v0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->slsZperfCube:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "persist.sys.debug_cubserver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ro.vendor.feature.zte_feature_zperf_cube"

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->slsZperfCube:Ljava/lang/Boolean;

    .line 72
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->slsZperfCube:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public releaseCPUBoost()V
    .locals 6

    .line 51
    const-string v0, "CPUBoostManager"

    invoke-static {}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->zPerfCube()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->boostBinder:Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    const-string v1, "com.zte.performance.mindsync.MindSyncManager$Trigger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 54
    const-string v2, "releasePerformanceLock"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->boostBinder:Landroid/os/Binder;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->boostBinder:Landroid/os/Binder;

    .line 57
    const-string p0, "releaseCPUBoost success"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseCPUBoost exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_0
    :goto_0
    return-void
.end method

.method public requestCPUBoost(J)V
    .locals 2

    .line 28
    sget-object v0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->DEFAULT_TYPE:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->requestCPUBoost(Ljava/lang/String;IJ)V

    return-void
.end method

.method public requestCPUBoost(Ljava/lang/String;IJ)V
    .locals 6

    .line 32
    const-string v0, "CPUBoostManager"

    invoke-static {}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->zPerfCube()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    const-string v1, "com.zte.performance.mindsync.MindSyncManager$Trigger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    const-string v2, "acquirePerformanceLock"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 37
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {v3, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object v3, p0, Lcn/nubia/redmagickyi/util/CPUBoostManager;->boostBinder:Landroid/os/Binder;

    .line 39
    const-string p0, "requestCPUBoost success"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "requestCPUBoost exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_0
    :goto_0
    return-void
.end method
