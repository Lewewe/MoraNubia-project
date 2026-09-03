.class Lcom/unity3d/player/b$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/b;-><init>(Lcom/unity3d/player/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/b;


# direct methods
.method constructor <init>(Lcom/unity3d/player/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/unity3d/player/b$2;->this$0:Lcom/unity3d/player/b;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 91
    invoke-static {}, Lcom/unity3d/player/b;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const/4 v0, 0x5

    .line 95
    const-string v1, "Camera2: CameraDevice disconnected."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/unity3d/player/b$2;->this$0:Lcom/unity3d/player/b;

    invoke-static {p0, p1}, Lcom/unity3d/player/b;->access$300(Lcom/unity3d/player/b;Landroid/hardware/camera2/CameraDevice;)V

    .line 97
    invoke-static {}, Lcom/unity3d/player/b;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: Error opeining CameraDevice "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/unity3d/player/b$2;->this$0:Lcom/unity3d/player/b;

    invoke-static {p0, p1}, Lcom/unity3d/player/b;->access$300(Lcom/unity3d/player/b;Landroid/hardware/camera2/CameraDevice;)V

    .line 103
    invoke-static {}, Lcom/unity3d/player/b;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/unity3d/player/b$2;->this$0:Lcom/unity3d/player/b;

    invoke-static {p0, p1}, Lcom/unity3d/player/b;->access$102(Lcom/unity3d/player/b;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 87
    invoke-static {}, Lcom/unity3d/player/b;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
