.class Lcom/unity3d/player/UnityPlayer$11;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->checkResumePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 673
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$11;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$11;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1500(Lcom/unity3d/player/UnityPlayer;)V

    .line 676
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$11;->this$0:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$11$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$11$1;-><init>(Lcom/unity3d/player/UnityPlayer$11;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
