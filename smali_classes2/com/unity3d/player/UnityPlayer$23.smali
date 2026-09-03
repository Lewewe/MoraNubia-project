.class Lcom/unity3d/player/UnityPlayer$23;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->initializeGoogleVr()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;

.field final synthetic val$finalVar:Lcom/unity3d/player/GoogleVrProxy;

.field final synthetic val$var3:Ljava/util/concurrent/Semaphore;

.field final synthetic val$var4:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/GoogleVrProxy;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1028
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$23;->this$0:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$23;->val$finalVar:Lcom/unity3d/player/GoogleVrProxy;

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer$23;->val$var4:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/unity3d/player/UnityPlayer$23;->val$var3:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1030
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$23;->val$finalVar:Lcom/unity3d/player/GoogleVrProxy;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$23;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->access$1600(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$23;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v3}, Lcom/unity3d/player/UnityPlayer;->access$2600(Lcom/unity3d/player/UnityPlayer;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer$23;->val$var4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unity3d/player/GoogleVrProxy;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 1031
    const-string v1, "Unable to initialize Google VR subsystem."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 1034
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$23;->val$finalVar:Lcom/unity3d/player/GoogleVrProxy;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/GoogleVrProxy;->a(Landroid/content/Intent;)V

    .line 1038
    :cond_1
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$23;->val$var3:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
