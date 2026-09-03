.class Lcom/unity3d/player/GoogleVrProxy$3;
.super Ljava/lang/Object;
.source "GoogleVrProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/GoogleVrProxy;->setGoogleVrModeEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/GoogleVrProxy;

.field final synthetic val$var1:Z


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleVrProxy;Z)V
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

    .line 205
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iput-boolean p2, p0, Lcom/unity3d/player/GoogleVrProxy$3;->val$var1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 207
    iget-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->val$var1:Z

    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v1}, Lcom/unity3d/player/GoogleVrProxy;->access$200(Lcom/unity3d/player/GoogleVrProxy;)Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 209
    :try_start_0
    iget-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->val$var1:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getGvrLayout"

    const-string v2, "enable"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v0}, Lcom/unity3d/player/GoogleVrProxy;->access$200(Lcom/unity3d/player/GoogleVrProxy;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->b:Lcom/unity3d/player/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->b:Lcom/unity3d/player/f;

    iget-object v5, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v5, v5, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1, v4}, Lcom/unity3d/player/f;->addViewToPlayer(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    const-string v1, "Unable to add Google VR to view hierarchy."

    invoke-virtual {v0, v1}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v0, v4}, Lcom/unity3d/player/GoogleVrProxy;->access$300(Lcom/unity3d/player/GoogleVrProxy;Z)V

    goto :goto_0

    .line 220
    :cond_2
    iget-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->val$var1:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v0}, Lcom/unity3d/player/GoogleVrProxy;->access$200(Lcom/unity3d/player/GoogleVrProxy;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v0, v3}, Lcom/unity3d/player/GoogleVrProxy;->access$300(Lcom/unity3d/player/GoogleVrProxy;Z)V

    .line 222
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->b:Lcom/unity3d/player/f;

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->b:Lcom/unity3d/player/f;

    iget-object v2, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v2, v2, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/unity3d/player/f;->removeViewFromPlayer(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy$3;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception enabling Google VR on UI Thread. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
