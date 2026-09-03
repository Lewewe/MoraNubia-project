.class Lcom/unity3d/player/r$1;
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

.field final synthetic val$var2:Ljava/lang/String;

.field final synthetic val$var3:I

.field final synthetic val$var4:I

.field final synthetic val$var5:I

.field final synthetic val$var6:Z

.field final synthetic val$var7:J

.field final synthetic val$var9:J


# direct methods
.method constructor <init>(Lcom/unity3d/player/r;Ljava/lang/String;IIIZJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    iput-object p2, p0, Lcom/unity3d/player/r$1;->val$var2:Ljava/lang/String;

    iput p3, p0, Lcom/unity3d/player/r$1;->val$var3:I

    iput p4, p0, Lcom/unity3d/player/r$1;->val$var4:I

    iput p5, p0, Lcom/unity3d/player/r$1;->val$var5:I

    iput-boolean p6, p0, Lcom/unity3d/player/r$1;->val$var6:Z

    iput-wide p7, p0, Lcom/unity3d/player/r$1;->val$var7:J

    iput-wide p9, p0, Lcom/unity3d/player/r$1;->val$var9:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 39
    iget-object v0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$000(Lcom/unity3d/player/r;)Lcom/unity3d/player/q;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 40
    const-string v1, "Video already playing"

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->access$102(Lcom/unity3d/player/r;I)I

    .line 42
    iget-object p0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {p0}, Lcom/unity3d/player/r;->access$200(Lcom/unity3d/player/r;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    new-instance v13, Lcom/unity3d/player/q;

    iget-object v1, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v1}, Lcom/unity3d/player/r;->access$300(Lcom/unity3d/player/r;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/r$1;->val$var2:Ljava/lang/String;

    iget v4, p0, Lcom/unity3d/player/r$1;->val$var3:I

    iget v5, p0, Lcom/unity3d/player/r$1;->val$var4:I

    iget v6, p0, Lcom/unity3d/player/r$1;->val$var5:I

    iget-boolean v7, p0, Lcom/unity3d/player/r$1;->val$var6:Z

    iget-wide v8, p0, Lcom/unity3d/player/r$1;->val$var7:J

    iget-wide v10, p0, Lcom/unity3d/player/r$1;->val$var9:J

    new-instance v12, Lcom/unity3d/player/r$1$1;

    invoke-direct {v12, p0}, Lcom/unity3d/player/r$1$1;-><init>(Lcom/unity3d/player/r$1;)V

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/unity3d/player/q;-><init>(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/q$a;)V

    invoke-static {v0, v13}, Lcom/unity3d/player/r;->access$002(Lcom/unity3d/player/r;Lcom/unity3d/player/q;)Lcom/unity3d/player/q;

    .line 64
    iget-object v0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$000(Lcom/unity3d/player/r;)Lcom/unity3d/player/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$700(Lcom/unity3d/player/r;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    iget-object p0, p0, Lcom/unity3d/player/r$1;->this$0:Lcom/unity3d/player/r;

    invoke-static {p0}, Lcom/unity3d/player/r;->access$000(Lcom/unity3d/player/r;)Lcom/unity3d/player/q;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
