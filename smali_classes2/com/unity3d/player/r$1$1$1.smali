.class Lcom/unity3d/player/r$1$1$1;
.super Ljava/lang/Object;
.source "r.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/r$1$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/unity3d/player/r$1$1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/r$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/unity3d/player/r$1$1$1;->this$2:Lcom/unity3d/player/r$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/unity3d/player/r$1$1$1;->this$2:Lcom/unity3d/player/r$1$1;

    iget-object v0, v0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object v0, v0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$600(Lcom/unity3d/player/r;)V

    .line 52
    iget-object p0, p0, Lcom/unity3d/player/r$1$1$1;->this$2:Lcom/unity3d/player/r$1$1;

    iget-object p0, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object p0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {p0}, Lcom/unity3d/player/r;->access$700(Lcom/unity3d/player/r;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method
