.class Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$2;
.super Ljava/lang/Object;
.source "TrainingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;->onFail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;

.field final synthetic val$code:I

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$2;->this$2:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;

    iput p2, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$2;->val$code:I

    iput-object p3, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$2;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$2;->this$2:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;

    iget-object v0, v0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;->this$1:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    iget-object v0, v0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {v0}, Lcom/zte/wakeup/training/TrainingManager;->access$500(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/wakeup/training/TrainingManager$Callback;

    move-result-object v0

    iget v1, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$2;->val$code:I

    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1$2;->val$errMsg:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onTrainFailed(ILjava/lang/String;)V

    return-void
.end method
