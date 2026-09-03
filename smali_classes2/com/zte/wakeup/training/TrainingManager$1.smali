.class Lcom/zte/wakeup/training/TrainingManager$1;
.super Ljava/lang/Object;
.source "TrainingManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/wakeup/training/TrainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/wakeup/training/TrainingManager;


# direct methods
.method constructor <init>(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$1;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrainingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$1;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p0}, Lcom/zte/wakeup/training/TrainingManager;->access$100(Lcom/zte/wakeup/training/TrainingManager;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$1;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p0}, Lcom/zte/wakeup/training/TrainingManager;->access$000(Lcom/zte/wakeup/training/TrainingManager;)V

    :goto_0
    return v0
.end method
