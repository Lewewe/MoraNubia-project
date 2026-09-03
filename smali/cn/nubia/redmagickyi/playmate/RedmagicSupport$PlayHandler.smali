.class Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;
.super Landroid/os/Handler;
.source "RedmagicSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicSupport;
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
            "Lcn/nubia/redmagickyi/playmate/RedmagicSupport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)V
    .locals 2

    .line 430
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->isFirstTimePlay:Z

    .line 431
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 432
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->isFirstTimePlay:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    if-eqz v0, :cond_1

    .line 439
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 441
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->isFirstTimePlay:Z

    .line 442
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 443
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$100(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->setHaveVoice(Z)V

    .line 444
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$200(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 445
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$100(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->startPlay(I)V

    :cond_1
    :goto_0
    return-void
.end method
