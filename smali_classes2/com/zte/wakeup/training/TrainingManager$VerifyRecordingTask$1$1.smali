.class Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1$1;
.super Ljava/lang/Object;
.source "TrainingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;


# direct methods
.method constructor <init>(Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1$1;->this$2:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 288
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1$1;->this$2:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;

    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask$1;->this$1:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v1}, Lcom/zte/wakeup/training/TrainingManager;->access$800(Lcom/zte/wakeup/training/TrainingManager;ZILjava/lang/String;)V

    return-void
.end method
