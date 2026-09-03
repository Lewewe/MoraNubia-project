.class Lcom/unity3d/player/r$1$1;
.super Ljava/lang/Object;
.source "r.java"

# interfaces
.implements Lcom/unity3d/player/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/r$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity3d/player/r$1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/r$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object v0, v0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$400(Lcom/unity3d/player/r;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 47
    iget-object v0, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object v0, v0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0, p1}, Lcom/unity3d/player/r;->access$102(Lcom/unity3d/player/r;I)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object v0, v0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$500(Lcom/unity3d/player/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object v0, v0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    new-instance v1, Lcom/unity3d/player/r$1$1$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/r$1$1$1;-><init>(Lcom/unity3d/player/r$1$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/r;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object p1, p1, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {p1}, Lcom/unity3d/player/r;->access$200(Lcom/unity3d/player/r;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/unity3d/player/r$1$1;->this$1:Lcom/unity3d/player/r$1;

    iget-object p0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {p0}, Lcom/unity3d/player/r;->access$400(Lcom/unity3d/player/r;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
