.class Lcom/unity3d/player/GoogleVrProxy$1;
.super Landroid/os/Handler;
.source "GoogleVrProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/GoogleVrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/GoogleVrProxy;


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleVrProxy;Landroid/os/Looper;)V
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

    .line 30
    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$1;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2121f

    if-eq v0, v1, :cond_0

    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 35
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 45
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 46
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy$1;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {p0}, Lcom/unity3d/player/GoogleVrProxy;->access$000(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 48
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {v0, p1}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceAvailable(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    return-void

    .line 37
    :pswitch_1
    iget-object p0, p0, Lcom/unity3d/player/GoogleVrProxy$1;->this$0:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {p0}, Lcom/unity3d/player/GoogleVrProxy;->access$000(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 39
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {p1}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onFrameAvailable()V

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7ffffffd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
