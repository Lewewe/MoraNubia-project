.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;Z)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->indeedHideControllerBar(Z)V

    return-void
.end method

.method private indeedHideControllerBar(Z)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 319
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 321
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 325
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->isCurrentPage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 327
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 329
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 331
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private indeedShowControllerBar()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 341
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 343
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 291
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 298
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    .line 299
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->indeedHideControllerBar(Z)V

    goto :goto_2

    .line 301
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->indeedShowControllerBar()V

    goto :goto_2

    .line 294
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 295
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/view/LoadingView;

    move-result-object p0

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/LoadingView;->setVisibility(I)V

    :goto_2
    return-void
.end method
