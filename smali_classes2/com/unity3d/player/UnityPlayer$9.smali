.class Lcom/unity3d/player/UnityPlayer$9;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->pauseUnity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;

.field final synthetic val$var1:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 586
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$9;->this$0:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$9;->val$var1:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1200(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->access$1302(Lcom/unity3d/player/UnityPlayer;Z)Z

    .line 590
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1100(Lcom/unity3d/player/UnityPlayer;)V

    .line 591
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$9;->val$var1:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    goto :goto_0

    .line 593
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$9;->val$var1:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void
.end method
