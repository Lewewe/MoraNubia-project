.class public Lcn/nubia/upgrade/http/d;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/http/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcn/nubia/upgrade/http/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;Z)V
    .locals 8

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/http/d;->a:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    :cond_0
    new-instance v7, Lcn/nubia/upgrade/http/d$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/nubia/upgrade/http/d$a;-><init>(Lcn/nubia/upgrade/http/d;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcn/nubia/upgrade/http/d;->a:Landroid/os/AsyncTask;

    .line 71
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected a(Lcn/nubia/upgrade/model/a;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/http/d$b;
    .locals 2

    const-string v0, "JsonResult:"

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    new-instance v1, Lcn/nubia/upgrade/http/d$b;

    invoke-direct {v1, p0}, Lcn/nubia/upgrade/http/d$b;-><init>(Lcn/nubia/upgrade/http/d;)V

    .line 75
    :try_start_0
    invoke-static {}, Lcn/nubia/upgrade/constants/a;->a()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-virtual {p1, p2, p3}, Lcn/nubia/upgrade/model/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/upgrade/http/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "HttpRequestManager"

    .line 79
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    invoke-static {p0}, Lcn/nubia/upgrade/b/a;->a(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object p0

    if-nez p0, :cond_1

    const/16 p0, 0x3e9

    .line 88
    iput p0, v1, Lcn/nubia/upgrade/http/d$b;->a:I

    goto :goto_0

    .line 90
    :cond_1
    iput-object p0, v1, Lcn/nubia/upgrade/http/d$b;->b:Lcn/nubia/upgrade/model/VersionData;

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p0, 0x3e8

    .line 92
    iput p0, v1, Lcn/nubia/upgrade/http/d$b;->a:I

    return-object v1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcn/nubia/upgrade/http/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
