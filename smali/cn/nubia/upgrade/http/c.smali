.class public Lcn/nubia/upgrade/http/c;
.super Ljava/lang/Object;
.source "HttpDownloadManager.java"


# instance fields
.field private a:Lcn/nubia/upgrade/http/a;

.field private b:Lcn/nubia/upgrade/http/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/upgrade/http/c;->b:Lcn/nubia/upgrade/http/b;

    .line 7
    new-instance v0, Lcn/nubia/upgrade/http/b;

    invoke-direct {v0, p1}, Lcn/nubia/upgrade/http/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/upgrade/http/c;->b:Lcn/nubia/upgrade/http/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/upgrade/http/c;->b:Lcn/nubia/upgrade/http/b;

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/b;->a()V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcn/nubia/upgrade/http/c;->a:Lcn/nubia/upgrade/http/a;

    if-nez p1, :cond_1

    .line 2
    iput-object p2, p0, Lcn/nubia/upgrade/http/c;->a:Lcn/nubia/upgrade/http/a;

    .line 3
    iget-object p1, p0, Lcn/nubia/upgrade/http/c;->b:Lcn/nubia/upgrade/http/b;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/upgrade/http/a;->h()Lcn/nubia/upgrade/http/a$b;

    move-result-object p1

    sget-object v0, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_4

    const/16 p1, 0x3ea

    .line 6
    invoke-interface {p3, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/nubia/upgrade/http/c;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {p1}, Lcn/nubia/upgrade/http/a;->h()Lcn/nubia/upgrade/http/a$b;

    move-result-object p1

    sget-object v0, Lcn/nubia/upgrade/http/a$b;->a:Lcn/nubia/upgrade/http/a$b;

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_4

    const/16 p1, 0x3ee

    .line 10
    invoke-interface {p3, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 13
    :cond_3
    iput-object p2, p0, Lcn/nubia/upgrade/http/c;->a:Lcn/nubia/upgrade/http/a;

    .line 14
    iput-object v0, p2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 15
    iget-object p1, p0, Lcn/nubia/upgrade/http/c;->b:Lcn/nubia/upgrade/http/b;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/c;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/http/c;->b:Lcn/nubia/upgrade/http/b;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/b;->b()V

    :cond_0
    return-void
.end method
