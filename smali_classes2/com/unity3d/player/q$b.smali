.class public Lcom/unity3d/player/q$b;
.super Ljava/lang/Object;
.source "q.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private b:Lcom/unity3d/player/q;

.field private c:Z

.field final synthetic this$0:Lcom/unity3d/player/q;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/q;Lcom/unity3d/player/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 478
    iput-object p1, p0, Lcom/unity3d/player/q$b;->this$0:Lcom/unity3d/player/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/unity3d/player/q$b;->b:Lcom/unity3d/player/q;

    const/4 p1, 0x0

    .line 480
    iput-boolean p1, p0, Lcom/unity3d/player/q$b;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lcom/unity3d/player/q$b;->c:Z

    return-void
.end method

.method public final run()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 485
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 490
    :goto_0
    iget-boolean v0, p0, Lcom/unity3d/player/q$b;->c:Z

    if-nez v0, :cond_1

    .line 491
    invoke-static {}, Lcom/unity3d/player/q;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "Stopping the video player due to timeout."

    invoke-static {v0}, Lcom/unity3d/player/q;->access$100(Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/q$b;->b:Lcom/unity3d/player/q;

    invoke-virtual {p0}, Lcom/unity3d/player/q;->CancelOnPrepare()V

    :cond_1
    return-void
.end method
