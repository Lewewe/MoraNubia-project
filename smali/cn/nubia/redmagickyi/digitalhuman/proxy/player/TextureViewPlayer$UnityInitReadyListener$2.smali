.class Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;
.super Landroid/os/Handler;
.source "TextureViewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->queryUnityNotBlack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;Landroid/os/Looper;)V
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

    .line 455
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-wide/16 v0, 0x32

    const/4 p1, 0x0

    .line 459
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    iget-object v3, v3, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->access$400(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 460
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$600(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 463
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    iget-object v2, v2, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    iget-object v2, v2, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-interface {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->setModelRendered()V

    .line 464
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$700(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)V

    .line 465
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$800(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$600(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$600(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 471
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$600(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 473
    :cond_1
    throw v2

    .line 470
    :catch_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$600(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 471
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener$2;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->access$600(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
