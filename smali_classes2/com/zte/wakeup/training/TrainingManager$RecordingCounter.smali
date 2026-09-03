.class Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;
.super Ljava/lang/Object;
.source "TrainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/wakeup/training/TrainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingCounter"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCounter:I

.field final synthetic this$0:Lcom/zte/wakeup/training/TrainingManager;


# direct methods
.method public constructor <init>(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 361
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    const-class p1, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 362
    iput p1, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->mCounter:I

    return-void
.end method


# virtual methods
.method public getCurrentProgress()I
    .locals 0

    .line 378
    iget p0, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->mCounter:I

    return p0
.end method

.method public isFinished()Z
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isFinished: mCounter = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->mCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {v0}, Lcom/zte/wakeup/training/TrainingManager;->access$1100(Lcom/zte/wakeup/training/TrainingManager;)I

    move-result v0

    iget p0, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->mCounter:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateRecordingResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 368
    iget p1, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->mCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->mCounter:I

    :cond_0
    return-void
.end method
