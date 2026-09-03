.class public Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncTask"


# instance fields
.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private future:Lcom/bumptech/glide/request/FutureTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->uri:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;)Lcom/bumptech/glide/request/FutureTarget;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->future:Lcom/bumptech/glide/request/FutureTarget;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;Lcom/bumptech/glide/request/FutureTarget;)Lcom/bumptech/glide/request/FutureTarget;
    .locals 0

    .line 13
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->future:Lcom/bumptech/glide/request/FutureTarget;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->future:Lcom/bumptech/glide/request/FutureTarget;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 79
    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/FutureTarget;->cancel(Z)Z

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->future:Lcom/bumptech/glide/request/FutureTarget;

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setFuture(Lcom/bumptech/glide/request/FutureTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->future:Lcom/bumptech/glide/request/FutureTarget;

    return-void
.end method

.method public submit(Lcom/bumptech/glide/RequestBuilder;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const-string v0, "loadImageSync error: "

    const/4 v1, 0x1

    .line 25
    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 27
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    new-instance v4, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$1;

    invoke-direct {v4, p0, p1, v1}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$1;-><init>(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;Lcom/bumptech/glide/RequestBuilder;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 41
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    const-string v2, "SyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :goto_1
    aget-object p0, v1, v3

    return-object p0

    .line 45
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->release()V

    .line 46
    throw p1
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "submit error: "

    .line 52
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    new-instance v2, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;-><init>(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 67
    :try_start_1
    const-string v1, "SyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 69
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->release()V

    .line 70
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncTask{uri=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
