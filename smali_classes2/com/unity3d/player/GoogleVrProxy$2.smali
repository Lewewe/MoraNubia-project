.class Lcom/unity3d/player/GoogleVrProxy$2;
.super Ljava/lang/Object;
.source "GoogleVrProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/GoogleVrProxy;->loadGoogleVr(ZZZZZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/GoogleVrProxy;

.field final synthetic val$var1:Z

.field final synthetic val$var2:Z

.field final synthetic val$var3:Z

.field final synthetic val$var4:Z

.field final synthetic val$var5:Z

.field final synthetic val$var6:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleVrProxy;Ljava/util/concurrent/atomic/AtomicLong;ZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 181
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$2;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iput-object p2, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var6:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean p3, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var1:Z

    iput-boolean p4, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var2:Z

    iput-boolean p5, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var3:Z

    iput-boolean p6, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var4:Z

    iput-boolean p7, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var5:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var6:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy$2;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    iget-object v1, v1, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/p;

    const-string v2, "load"

    iget-boolean v3, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var1:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v3, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var2:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v3, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var3:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v3, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var4:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v3, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var5:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v3, p0, Lcom/unity3d/player/GoogleVrProxy$2;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v3}, Lcom/unity3d/player/GoogleVrProxy;->access$100(Lcom/unity3d/player/GoogleVrProxy;)Ljava/lang/Runnable;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unity3d/player/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy$2;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception caught while loading GoogleVR. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy$2;->val$var6:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_0
    return-void
.end method
