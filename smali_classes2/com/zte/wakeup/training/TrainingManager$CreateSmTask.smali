.class Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;
.super Landroid/os/AsyncTask;
.source "TrainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/wakeup/training/TrainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateSmTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/wakeup/training/TrainingManager;


# direct methods
.method private constructor <init>(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/wakeup/training/TrainingManager$1;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;-><init>(Lcom/zte/wakeup/training/TrainingManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 315
    :try_start_0
    iget-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p1}, Lcom/zte/wakeup/training/TrainingManager;->access$200(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p1}, Lcom/zte/wakeup/training/TrainingManager;->access$200(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    move-result-object p1

    new-instance v0, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;

    invoke-direct {v0, p0}, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask$1;-><init>(Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;)V

    invoke-interface {p1, v0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;->createSmModel(Lcom/zte/voiceassist/wakeup/aidl/ITrainCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 311
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
