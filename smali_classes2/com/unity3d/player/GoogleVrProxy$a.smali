.class Lcom/unity3d/player/GoogleVrProxy$a;
.super Ljava/lang/Object;
.source "GoogleVrProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/GoogleVrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field final synthetic this$0:Lcom/unity3d/player/GoogleVrProxy;


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleVrProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 373
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    .line 374
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->b:Z

    .line 375
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->c:Z

    .line 376
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    .line 378
    iput-boolean p1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    .line 389
    iput-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->b:Z

    .line 390
    iput-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    const/4 v1, 0x1

    .line 391
    iput-boolean v1, p0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    .line 392
    iput-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy$a;->f:Z

    return-void
.end method
