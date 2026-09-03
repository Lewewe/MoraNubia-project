.class Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;
.super Ljava/lang/Object;
.source "SyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->submit(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;->this$0:Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "submit error: "

    const/4 v1, 0x0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;->this$0:Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->access$002(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;Lcom/bumptech/glide/request/FutureTarget;)Lcom/bumptech/glide/request/FutureTarget;

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;->this$0:Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->access$100(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 58
    :try_start_1
    const-string v3, "SyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 60
    :goto_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;->this$0:Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->access$002(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;Lcom/bumptech/glide/request/FutureTarget;)Lcom/bumptech/glide/request/FutureTarget;

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask$2;->this$0:Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->access$100(Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    throw v0
.end method
