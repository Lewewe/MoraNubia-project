.class final Lcom/unity3d/player/r;
.super Ljava/lang/Object;
.source "r.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/r$a;
    }
.end annotation


# instance fields
.field private a:Lcom/unity3d/player/UnityPlayer;

.field private b:Landroid/content/Context;

.field private c:Lcom/unity3d/player/r$a;

.field private final d:Ljava/util/concurrent/Semaphore;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private f:Lcom/unity3d/player/q;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/unity3d/player/r;->a:Lcom/unity3d/player/UnityPlayer;

    .line 18
    iput-object v0, p0, Lcom/unity3d/player/r;->b:Landroid/content/Context;

    .line 20
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/unity3d/player/r;->d:Ljava/util/concurrent/Semaphore;

    .line 21
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    .line 22
    iput-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/unity3d/player/r;->g:I

    .line 24
    iput-boolean v2, p0, Lcom/unity3d/player/r;->h:Z

    .line 25
    iput-boolean v2, p0, Lcom/unity3d/player/r;->i:Z

    .line 28
    iput-object p1, p0, Lcom/unity3d/player/r;->a:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/player/r;)Lcom/unity3d/player/q;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    return-object p0
.end method

.method static synthetic access$002(Lcom/unity3d/player/r;Lcom/unity3d/player/q;)Lcom/unity3d/player/q;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    return-object p1
.end method

.method static synthetic access$102(Lcom/unity3d/player/r;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/unity3d/player/r;->g:I

    return p1
.end method

.method static synthetic access$200(Lcom/unity3d/player/r;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/player/r;->d:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unity3d/player/r;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/player/r;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/unity3d/player/r;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$500(Lcom/unity3d/player/r;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/unity3d/player/r;->i:Z

    return p0
.end method

.method static synthetic access$502(Lcom/unity3d/player/r;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/unity3d/player/r;->i:Z

    return p1
.end method

.method static synthetic access$600(Lcom/unity3d/player/r;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/unity3d/player/r;->d()V

    return-void
.end method

.method static synthetic access$700(Lcom/unity3d/player/r;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/unity3d/player/r;->a:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/unity3d/player/r;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayer;->removeViewFromPlayer(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/unity3d/player/r;->i:Z

    .line 114
    iget-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    invoke-virtual {v0}, Lcom/unity3d/player/q;->destroyPlayer()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    .line 116
    iget-object p0, p0, Lcom/unity3d/player/r;->c:Lcom/unity3d/player/r$a;

    if-eqz p0, :cond_0

    .line 117
    invoke-interface {p0}, Lcom/unity3d/player/r$a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 125
    iget-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    if-eqz v0, :cond_1

    .line 126
    iget v1, p0, Lcom/unity3d/player/r;->g:I

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/unity3d/player/q;->CancelOnPrepare()V

    goto :goto_0

    .line 128
    :cond_0
    iget-boolean v1, p0, Lcom/unity3d/player/r;->i:Z

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/unity3d/player/q;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/player/r;->h:Z

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    invoke-virtual {v0}, Lcom/unity3d/player/q;->pause()V

    .line 136
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/r$a;)Z
    .locals 14

    move-object v11, p0

    .line 32
    iget-object v0, v11, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p11

    .line 33
    iput-object v0, v11, Lcom/unity3d/player/r;->c:Lcom/unity3d/player/r$a;

    move-object v0, p1

    .line 34
    iput-object v0, v11, Lcom/unity3d/player/r;->b:Landroid/content/Context;

    .line 35
    iget-object v0, v11, Lcom/unity3d/player/r;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    const/4 v12, 0x2

    .line 36
    iput v12, v11, Lcom/unity3d/player/r;->g:I

    .line 37
    new-instance v13, Lcom/unity3d/player/r$1;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/unity3d/player/r$1;-><init>(Lcom/unity3d/player/r;Ljava/lang/String;IIIZJJ)V

    invoke-virtual {p0, v13}, Lcom/unity3d/player/r;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, v11, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    iget-object v1, v11, Lcom/unity3d/player/r;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 76
    iget-object v1, v11, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    iget v1, v11, Lcom/unity3d/player/r;->g:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v12, :cond_0

    const/4 v0, 0x1

    .line 81
    :catch_0
    :cond_0
    new-instance v1, Lcom/unity3d/player/r$2;

    invoke-direct {v1, p0}, Lcom/unity3d/player/r$2;-><init>(Lcom/unity3d/player/r;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/player/r;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_1

    .line 86
    iget v1, v11, Lcom/unity3d/player/r;->g:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 87
    new-instance v1, Lcom/unity3d/player/r$3;

    invoke-direct {v1, p0}, Lcom/unity3d/player/r$3;-><init>(Lcom/unity3d/player/r;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/player/r;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Lcom/unity3d/player/r$4;

    invoke-direct {v1, p0}, Lcom/unity3d/player/r$4;-><init>(Lcom/unity3d/player/r;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/player/r;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    :goto_0
    iget-object v1, v11, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public final b()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 141
    iget-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/player/r;->i:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/player/r;->h:Z

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/unity3d/player/q;->start()V

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 150
    iget-object v0, p0, Lcom/unity3d/player/r;->f:Lcom/unity3d/player/q;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/unity3d/player/q;->updateVideoLayout()V

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/r;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/unity3d/player/r;->b:Landroid/content/Context;

    .line 159
    instance-of v0, p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v0, :cond_0

    .line 160
    check-cast p0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 162
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 163
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    .line 165
    const-string p1, "Not running from an Activity; Ignoring execution request..."

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
