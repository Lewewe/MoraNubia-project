.class Lcom/zte/wakeup/training/TrainingManager$3;
.super Lcom/zte/wakeup/training/callback/SimpleVolumeCallback;
.source "TrainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/wakeup/training/TrainingManager;->startRecording()V
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

    .line 189
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager$3;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-direct {p0}, Lcom/zte/wakeup/training/callback/SimpleVolumeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public volumeUpdate(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager$3;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {v0}, Lcom/zte/wakeup/training/TrainingManager;->access$400(Lcom/zte/wakeup/training/TrainingManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager$3;->this$0:Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p0}, Lcom/zte/wakeup/training/TrainingManager;->access$500(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/wakeup/training/TrainingManager$Callback;

    move-result-object p0

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    div-double/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lcom/zte/wakeup/training/TrainingManager$Callback;->volumeUpdate(D)V

    .line 195
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
