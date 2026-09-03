.class Lcom/zte/wakeup/training/TrainingManager$2;
.super Ljava/lang/Object;
.source "TrainingManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/wakeup/training/TrainingManager;->bindTranService()V
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

    .line 97
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$2;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 120
    const-string p1, "TrainingManager"

    const-string v0, "onBindingDied"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$2;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zte/wakeup/training/TrainingManager;->access$202(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 114
    const-string p1, "TrainingManager"

    const-string v0, "onNullBinding"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$2;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zte/wakeup/training/TrainingManager;->access$202(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 100
    const-string p1, "TrainingManager"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$2;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p2}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zte/wakeup/training/TrainingManager;->access$202(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    .line 102
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$2;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p0}, Lcom/zte/wakeup/training/TrainingManager;->access$300(Lcom/zte/wakeup/training/TrainingManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 108
    const-string p1, "TrainingManager"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$2;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zte/wakeup/training/TrainingManager;->access$202(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    return-void
.end method
