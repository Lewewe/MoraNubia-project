.class Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;
.super Landroid/os/AsyncTask;
.source "TrainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/wakeup/training/TrainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAssetsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
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

    .line 256
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/wakeup/training/TrainingManager$1;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;-><init>(Lcom/zte/wakeup/training/TrainingManager;)V

    return-void
.end method


# virtual methods
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

    .line 256
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 260
    :try_start_0
    iget-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p1}, Lcom/zte/wakeup/training/TrainingManager;->access$200(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p0}, Lcom/zte/wakeup/training/TrainingManager;->access$200(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;->initForTranInBg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 264
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 256
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 271
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 272
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p0}, Lcom/zte/wakeup/training/TrainingManager;->access$700(Lcom/zte/wakeup/training/TrainingManager;)V

    return-void
.end method
