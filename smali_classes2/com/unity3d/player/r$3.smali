.class Lcom/unity3d/player/r$3;
.super Ljava/lang/Object;
.source "r.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/r;->a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/r$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/r;


# direct methods
.method constructor <init>(Lcom/unity3d/player/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/unity3d/player/r$3;->this$0:Lcom/unity3d/player/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/unity3d/player/r$3;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$000(Lcom/unity3d/player/r;)Lcom/unity3d/player/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/unity3d/player/r$3;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$700(Lcom/unity3d/player/r;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/r$3;->this$0:Lcom/unity3d/player/r;

    invoke-static {v1}, Lcom/unity3d/player/r;->access$000(Lcom/unity3d/player/r;)Lcom/unity3d/player/q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->addViewToPlayer(Landroid/view/View;Z)Z

    .line 91
    iget-object v0, p0, Lcom/unity3d/player/r$3;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0, v2}, Lcom/unity3d/player/r;->access$502(Lcom/unity3d/player/r;Z)Z

    .line 92
    iget-object p0, p0, Lcom/unity3d/player/r$3;->this$0:Lcom/unity3d/player/r;

    invoke-static {p0}, Lcom/unity3d/player/r;->access$000(Lcom/unity3d/player/r;)Lcom/unity3d/player/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unity3d/player/q;->requestFocus()Z

    :cond_0
    return-void
.end method
