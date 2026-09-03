.class Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;
.super Landroid/os/Handler;
.source "RedmagicBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayHandler"
.end annotation


# instance fields
.field private isFirstTimePlay:Z

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V
    .locals 2

    .line 442
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->isFirstTimePlay:Z

    .line 443
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 444
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->isFirstTimePlay:Z

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;)Z
    .locals 0

    .line 437
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->isFirstTimePlay:Z

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 449
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    if-eqz v0, :cond_5

    .line 451
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->removeMessages(I)V

    .line 461
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 462
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    .line 463
    aget-object v2, v5, v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    .line 464
    aget-object v6, v5, v3

    check-cast v6, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    if-ltz v1, :cond_5

    .line 466
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    move-result-object v7

    invoke-interface {v7}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->getDuration()J

    move-result-wide v7

    long-to-int v7, v7

    .line 467
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$400(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    move-result-object v8

    if-eqz v8, :cond_2

    if-lez v7, :cond_2

    .line 468
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getDuration()I

    move-result v2

    if-gtz v2, :cond_1

    .line 470
    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setDuration(I)V

    .line 471
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$400(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->notifyDataSetChanged()V

    .line 473
    :cond_1
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->getCurrentPosition()J

    move-result-wide v8

    long-to-int v2, v8

    .line 474
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$400(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->setPlayProgress(IIZ)V

    if-lt v2, v7, :cond_2

    goto :goto_0

    .line 480
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 481
    iput v4, v0, Landroid/os/Message;->what:I

    .line 482
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 483
    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x1e

    .line 484
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 453
    :cond_3
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->isFirstTimePlay:Z

    .line 454
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v3, :cond_4

    move v2, v3

    .line 455
    :cond_4
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 456
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->setHaveVoice(Z)V

    .line 457
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->startPlay(I)V

    :cond_5
    :goto_0
    return-void
.end method
