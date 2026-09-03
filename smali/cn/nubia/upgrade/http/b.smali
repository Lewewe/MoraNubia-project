.class public Lcn/nubia/upgrade/http/b;
.super Ljava/lang/Object;
.source "HttpDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/http/b$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/upgrade/http/b$a;

.field b:Lcn/nubia/upgrade/http/d;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/nubia/upgrade/http/d;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/http/b;->b:Lcn/nubia/upgrade/http/d;

    .line 3
    iput-object p1, p0, Lcn/nubia/upgrade/http/b;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/http/b;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcn/nubia/upgrade/http/b;->a:Lcn/nubia/upgrade/http/b$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcn/nubia/upgrade/http/b;->a:Lcn/nubia/upgrade/http/b$a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcn/nubia/upgrade/http/b$a;->a()V

    .line 8
    :cond_0
    new-instance v0, Lcn/nubia/upgrade/http/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/upgrade/http/b$a;-><init>(Lcn/nubia/upgrade/http/b;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/upgrade/http/b;->a:Lcn/nubia/upgrade/http/b$a;

    .line 10
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/http/b;->a:Lcn/nubia/upgrade/http/b$a;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/b$a;->a()V

    :cond_0
    return-void
.end method
