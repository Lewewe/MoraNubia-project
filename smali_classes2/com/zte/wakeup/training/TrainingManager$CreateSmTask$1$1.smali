.class Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$1;
.super Ljava/lang/Object;
.source "TrainingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;


# direct methods
.method constructor <init>(Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$1;->this$2:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$1;->this$2:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;

    iget-object v0, v0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;->this$1:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    iget-object v0, v0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {v0}, Lcom/zte/wakeup/training/TrainingManager;->access$1000(Lcom/zte/wakeup/training/TrainingManager;)V

    .line 323
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$1;->this$2:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;

    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;->this$1:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p0}, Lcom/zte/wakeup/training/TrainingManager;->access$500(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/wakeup/training/TrainingManager$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onTrainSuccess()V

    return-void
.end method
