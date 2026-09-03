.class Lcom/unity3d/player/UnityPlayer$e$1;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity3d/player/UnityPlayer$e;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$b;

    sget-object v1, Lcom/unity3d/player/UnityPlayer$b;->c:Lcom/unity3d/player/UnityPlayer$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean v0, v0, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->access$3300(Lcom/unity3d/player/UnityPlayer;Z)V

    .line 1399
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$b;->a:Lcom/unity3d/player/UnityPlayer$b;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1405
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x8dd

    if-eq v0, v2, :cond_0

    return v1

    .line 1409
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/player/UnityPlayer$d;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->h:Lcom/unity3d/player/UnityPlayer$d;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_5

    .line 1410
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget v0, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    sub-int/2addr v0, v3

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    .line 1411
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->executeGLThreadJobs()V

    .line 1412
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean p1, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    if-nez p1, :cond_1

    return v3

    .line 1416
    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean p1, p1, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    if-nez p1, :cond_2

    return v3

    .line 1420
    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$e;->h:I

    if-ltz p1, :cond_4

    .line 1421
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$e;->h:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$3400(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1422
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$3500(Lcom/unity3d/player/UnityPlayer;)V

    .line 1425
    :cond_3
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget v0, p1, Lcom/unity3d/player/UnityPlayer$e;->h:I

    sub-int/2addr v0, v3

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$e;->h:I

    .line 1428
    :cond_4
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$3600(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1429
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$200(Lcom/unity3d/player/UnityPlayer;)V

    goto/16 :goto_0

    .line 1431
    :cond_5
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->c:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_6

    .line 1432
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1433
    :cond_6
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->b:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_7

    .line 1434
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    goto/16 :goto_0

    .line 1435
    :cond_7
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->a:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_8

    .line 1436
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v1, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    goto :goto_0

    .line 1437
    :cond_8
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->d:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_9

    .line 1438
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v1, p1, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    goto :goto_0

    .line 1439
    :cond_9
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->e:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_a

    .line 1440
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    .line 1441
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer$e$1;->a()V

    goto :goto_0

    .line 1442
    :cond_a
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->f:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_c

    .line 1443
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$b;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$b;->a:Lcom/unity3d/player/UnityPlayer$b;

    if-ne p1, v0, :cond_b

    .line 1444
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1, v1}, Lcom/unity3d/player/UnityPlayer;->access$3300(Lcom/unity3d/player/UnityPlayer;Z)V

    .line 1447
    :cond_b
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$b;->b:Lcom/unity3d/player/UnityPlayer$b;

    iput-object v0, p1, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$b;

    goto :goto_0

    .line 1448
    :cond_c
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->g:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_d

    .line 1449
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$b;->c:Lcom/unity3d/player/UnityPlayer$b;

    iput-object v0, p1, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$b;

    .line 1450
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer$e$1;->a()V

    goto :goto_0

    .line 1451
    :cond_d
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->i:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_e

    .line 1452
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getLaunchURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/player/UnityPlayer;->access$3700(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_e
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->j:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_f

    .line 1454
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$e;->f:I

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget v1, v1, Lcom/unity3d/player/UnityPlayer$e;->g:I

    invoke-static {p1, v0, v1}, Lcom/unity3d/player/UnityPlayer;->access$3800(Lcom/unity3d/player/UnityPlayer;II)V

    .line 1457
    :cond_f
    :goto_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean p1, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    if-gtz p1, :cond_10

    .line 1458
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->h:Lcom/unity3d/player/UnityPlayer$d;

    invoke-static {p1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1459
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->this$1:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p0, Lcom/unity3d/player/UnityPlayer$e;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/unity3d/player/UnityPlayer$e;->e:I

    :cond_10
    return v3
.end method
