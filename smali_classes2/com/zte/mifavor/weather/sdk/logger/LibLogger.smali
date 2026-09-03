.class public Lcom/zte/mifavor/weather/sdk/logger/LibLogger;
.super Ljava/lang/Object;
.source "LibLogger.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STATS:Z

.field public static final LOGGABLE_DBG:Z

.field public static final LOGGABLE_RESTCORE:Z

.field public static final TAG:Ljava/lang/String; = "LibLogger"

.field public static logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 99
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->DEBUG:Z

    .line 100
    const-string v3, "LibLogger"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    sput-boolean v5, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    .line 101
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_RESTCORE:Z

    .line 102
    sput-boolean v5, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->DEBUG_STATS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 44
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    if-eqz v0, :cond_0

    .line 49
    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->ASSERT:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;->log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 55
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->DEBUG:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;->log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 33
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    if-eqz v0, :cond_0

    .line 38
    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->ERROR:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;->log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 66
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 70
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    if-eqz v0, :cond_0

    .line 71
    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->INFO:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;->log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 22
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->VERBOSE:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;->log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 77
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    if-eqz v0, :cond_0

    .line 78
    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->WARNING:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;->log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 88
    sget-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    if-eqz v0, :cond_0

    .line 89
    sget-object v1, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->WTF:Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;->log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x0

    .line 95
    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1, p2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
