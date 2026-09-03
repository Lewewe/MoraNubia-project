.class Lcom/unity3d/player/UnityPlayer$e;
.super Ljava/lang/Thread;
.source "UnityPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Z

.field c:Z

.field d:Lcom/unity3d/player/UnityPlayer$b;

.field e:I

.field f:I

.field g:I

.field h:I

.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1384
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 1385
    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    .line 1386
    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    .line 1387
    sget-object v0, Lcom/unity3d/player/UnityPlayer$b;->b:Lcom/unity3d/player/UnityPlayer$b;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$b;

    .line 1388
    iput p1, p0, Lcom/unity3d/player/UnityPlayer$e;->e:I

    const/4 p1, 0x5

    .line 1389
    iput p1, p0, Lcom/unity3d/player/UnityPlayer$e;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer$1;)V
    .locals 0

    .line 1374
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method private a(Lcom/unity3d/player/UnityPlayer$d;)V
    .locals 1

    .line 1518
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x8dd

    .line 1519
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1470
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->c:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 1525
    iput p1, p0, Lcom/unity3d/player/UnityPlayer$e;->f:I

    .line 1526
    iput p2, p0, Lcom/unity3d/player/UnityPlayer$e;->g:I

    .line 1527
    sget-object p1, Lcom/unity3d/player/UnityPlayer$d;->j:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1479
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->a:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    .line 1480
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1474
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->b:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1494
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->d:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    .line 1495
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1485
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->g:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1501
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1502
    sget-object p1, Lcom/unity3d/player/UnityPlayer$d;->e:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1489
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->f:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 0

    .line 1507
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 1508
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1514
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->i:Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->a(Lcom/unity3d/player/UnityPlayer$d;)V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 1393
    const-string v0, "UnityMain"

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer$e;->setName(Ljava/lang/String;)V

    .line 1394
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1395
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$e$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$e$1;-><init>(Lcom/unity3d/player/UnityPlayer$e;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    .line 1466
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
