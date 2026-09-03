.class Lcn/nubia/upgrade/service/c$c;
.super Ljava/lang/Object;
.source "UpgradeWork.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IDownLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/upgrade/service/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/service/c$c;->b:J

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x66

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->c(Lcn/nubia/upgrade/service/c;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onDownloadError(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/service/a;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Lcn/nubia/upgrade/service/a;)Lcn/nubia/upgrade/service/a;

    :cond_0
    :goto_0
    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ef

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_2

    .line 17
    :cond_1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    invoke-virtual {p0}, Lcn/nubia/upgrade/service/c;->b()V

    :cond_2
    return-void
.end method

.method public onDownloadPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/upgrade/service/a;->onDownloadPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Lcn/nubia/upgrade/service/a;)Lcn/nubia/upgrade/service/a;

    .line 10
    :cond_0
    :goto_0
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    invoke-virtual {p0}, Lcn/nubia/upgrade/service/c;->b()V

    :cond_1
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/upgrade/service/c;

    iget-object v2, v2, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/upgrade/service/c;

    iget-object v2, v2, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/upgrade/service/c;

    iget-object v2, v2, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-wide v2, p0, Lcn/nubia/upgrade/service/c$c;->b:J

    sub-long v2, v0, v2

    .line 7
    iget-object v4, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/upgrade/service/c;

    iget-object v4, v4, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationUpdateOffset()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    .line 9
    :cond_0
    iput-wide v0, p0, Lcn/nubia/upgrade/service/c$c;->b:J

    .line 10
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->g(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/c;

    invoke-static {v1}, Lcn/nubia/upgrade/service/c;->g(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/service/a;->onDownloadProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 19
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Lcn/nubia/upgrade/service/a;)Lcn/nubia/upgrade/service/a;

    :cond_2
    :goto_0
    return-void
.end method

.method public onResumeDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/upgrade/service/a;->onResumeDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Lcn/nubia/upgrade/service/a;)Lcn/nubia/upgrade/service/a;

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->g(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$e;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/upgrade/service/a;->onStartDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 8
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Lcn/nubia/upgrade/service/a;)Lcn/nubia/upgrade/service/a;

    :cond_0
    :goto_0
    return-void
.end method
