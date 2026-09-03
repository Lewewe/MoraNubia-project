.class Lcom/unity3d/player/c;
.super Ljava/lang/Object;
.source "c.java"


# instance fields
.field protected a:Lcom/unity3d/player/p;

.field protected b:Lcom/unity3d/player/f;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/player/f;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/unity3d/player/c;->a:Lcom/unity3d/player/p;

    .line 19
    iput-object v0, p0, Lcom/unity3d/player/c;->c:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/unity3d/player/c;->d:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/unity3d/player/c;->e:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/unity3d/player/c;->b:Lcom/unity3d/player/f;

    return-void
.end method


# virtual methods
.method protected reportError(Ljava/lang/String;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/unity3d/player/c;->b:Lcom/unity3d/player/f;

    const-string v1, " Error ["

    if-eqz v0, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unity3d/player/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/unity3d/player/c;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/unity3d/player/f;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/player/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/unity3d/player/c;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/unity3d/player/c;->c:Landroid/content/Context;

    .line 30
    instance-of v1, v0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not running "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unity3d/player/c;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " from an Activity; Ignoring execution request..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected runOnUiThreadWithSync(Ljava/lang/Runnable;)Z
    .locals 5

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    .line 46
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 47
    new-instance v3, Lcom/unity3d/player/c$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/unity3d/player/c$1;-><init>(Lcom/unity3d/player/c;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    const-string p1, "Timeout waiting for vr state change!"

    invoke-virtual {p0, p1}, Lcom/unity3d/player/c;->reportError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while trying to acquire sync lock. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/c;->reportError(Ljava/lang/String;)V

    :goto_0
    return v1
.end method
