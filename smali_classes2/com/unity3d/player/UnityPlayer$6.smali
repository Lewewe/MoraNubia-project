.class Lcom/unity3d/player/UnityPlayer$6;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->updateDisplayInternal(ILandroid/view/Surface;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;

.field final synthetic val$var1:I

.field final synthetic val$var2:Landroid/view/Surface;

.field final synthetic val$var3:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;Ljava/util/concurrent/Semaphore;)V
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

    .line 373
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$6;->this$0:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$6;->val$var1:I

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer$6;->val$var2:Landroid/view/Surface;

    iput-object p4, p0, Lcom/unity3d/player/UnityPlayer$6;->val$var3:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$6;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$6;->val$var1:I

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$6;->val$var2:Landroid/view/Surface;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->access$900(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    .line 376
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$6;->val$var3:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
