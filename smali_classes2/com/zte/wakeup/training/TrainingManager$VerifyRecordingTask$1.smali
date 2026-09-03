.class Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;
.super Lcom/zte/wakeup/training/callback/SimpleTrainCallback;
.source "TrainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;


# direct methods
.method constructor <init>(Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;->this$1:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    invoke-direct {p0}, Lcom/zte/wakeup/training/callback/SimpleTrainCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;->this$1:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    iget-object v0, v0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {v0}, Lcom/zte/wakeup/training/TrainingManager;->access$900(Lcom/zte/wakeup/training/TrainingManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1$2;-><init>(Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;->this$1:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    iget-object v0, v0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {v0}, Lcom/zte/wakeup/training/TrainingManager;->access$900(Lcom/zte/wakeup/training/TrainingManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1$1;

    invoke-direct {v1, p0}, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1$1;-><init>(Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
