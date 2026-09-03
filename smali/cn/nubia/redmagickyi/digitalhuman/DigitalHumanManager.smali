.class public final Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;
.super Ljava/lang/Object;
.source "DigitalHumanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$OnServiceBindCallback;
    }
.end annotation


# static fields
.field public static final CONNECTION_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DigitalHumanManager"

.field private static final sConnectionCallbackExecutor:Ljava/util/concurrent/Executor;

.field private static final sContextBound:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIModel:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOnServiceBindCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$OnServiceBindCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProxy:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;",
            ">;"
        }
    .end annotation
.end field

.field private static final sServerIdCreator:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DigitalHumanManager-ConnectionCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/HandlerExecutor;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sConnectionCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->CONNECTION_LOCK:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sContextBound:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sProxy:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sServerIdCreator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sOnServiceBindCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "NOT allowed to create DigitalHumanManager instance"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sContextBound:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sServerIdCreator:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sOnServiceBindCallback:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 26
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->resetConnection()V

    return-void
.end method

.method static synthetic access$500(Z)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;
    .locals 0

    .line 26
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->model(Z)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    return-object p0
.end method

.method public static bindService(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;)Z
    .locals 5

    const-string v0, "failed to bind model service, exception = "

    const-string v1, "model service already bound with context "

    .line 177
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 178
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sServerIdCreator:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sContextBound:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 180
    const-string p1, "DigitalHumanManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", no need to bind again with context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    .line 186
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->connect(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 188
    :try_start_2
    const-string v1, "DigitalHumanManager"

    const-string v3, "failed to bind model service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    :cond_1
    const-string v1, "DigitalHumanManager"

    const-string v4, "successfully bound model service"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p1, 0x0

    .line 194
    :goto_0
    :try_start_3
    const-string v3, "DigitalHumanManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez p1, :cond_2

    .line 199
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 202
    :cond_2
    monitor-exit v2

    return p1

    :catchall_0
    move-exception p0

    .line 203
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static connect(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;)Z
    .locals 4

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.redmagickyi.digitalhuman.server.DigitalHumanService"

    const-string v3, "cn.nubia.redmagickyi"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    const-string v1, "ServerId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sConnectionCallbackExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0
.end method

.method public static get()Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;
    .locals 2

    .line 250
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sProxy:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$2;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 258
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;

    return-object v0
.end method

.method public static isReady()Z
    .locals 1

    .line 173
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static model(Z)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;
    .locals 5

    .line 139
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sContextBound:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DigitalHumanManager"

    if-nez v1, :cond_0

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "model failed sContextBound: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 145
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "model failed sIModel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    const/4 v0, 0x0

    :goto_0
    if-nez p0, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    const-wide/16 v3, 0x32

    .line 164
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 168
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "model result: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", tryCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static resetConnection()V
    .locals 2

    .line 236
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setOnServiceBindCallback(Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$OnServiceBindCallback;)V
    .locals 1

    .line 262
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sOnServiceBindCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static unbindService(Landroid/content/Context;)Z
    .locals 4

    .line 207
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sContextBound:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 209
    const-string p0, "DigitalHumanManager"

    const-string v1, "NO context bound, can\'t unbind model service"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v0

    return v3

    .line 212
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq p0, v2, :cond_1

    .line 214
    const-string p0, "DigitalHumanManager"

    const-string v1, "NOT the context bound before, can\'t unbind tunnel service"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v0

    return v3

    .line 218
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sIModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 219
    const-string p0, "DigitalHumanManager"

    const-string v2, "unbindService: model service"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->get()Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->release()V

    .line 221
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->resetConnection()V

    goto :goto_0

    .line 223
    :cond_2
    const-string p0, "DigitalHumanManager"

    const-string v2, "unbindService: model service NOT connected, no need to reset"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 228
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 230
    const-string p0, "DigitalHumanManager"

    const-string v1, "successfully unbound model service"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
