.class Lcom/unity3d/player/GoogleVrProxy$4;
.super Ljava/lang/Object;
.source "GoogleVrProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/GoogleVrProxy;->unloadGoogleVr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/GoogleVrProxy;


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleVrProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$4;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$4;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$4;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const-string v2, "unload"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$4;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const-string v2, "deinitialize"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$4;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$4;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v0}, Lcom/unity3d/player/GoogleVrProxy;->access$400(Lcom/unity3d/player/GoogleVrProxy;)Lcom/unity3d/player/GoogleVrProxy$a;

    move-result-object v0

    iput-boolean v1, v0, Lcom/unity3d/player/GoogleVrProxy$a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy$4;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception unloading Google VR on UI Thread. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
