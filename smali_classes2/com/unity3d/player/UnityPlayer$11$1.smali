.class Lcom/unity3d/player/UnityPlayer$11$1;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity3d/player/UnityPlayer$11;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 676
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$11$1;->this$1:Lcom/unity3d/player/UnityPlayer$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$11$1;->this$1:Lcom/unity3d/player/UnityPlayer$11;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$11;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$11$1;->this$1:Lcom/unity3d/player/UnityPlayer$11;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$11;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object v0

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$11$1;->this$1:Lcom/unity3d/player/UnityPlayer$11;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$11;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p0}, Lcom/unity3d/player/j;->b(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
