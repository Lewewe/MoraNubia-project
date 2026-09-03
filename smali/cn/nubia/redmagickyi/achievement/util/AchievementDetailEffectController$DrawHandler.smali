.class Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;
.super Landroid/os/Handler;
.source "AchievementDetailEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# static fields
.field private static final MAX_FRAME_INDEX:I = 0x76


# instance fields
.field private FRAME_RATE:I

.field private index:I

.field private rootRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    .line 320
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p1, 0x28

    .line 315
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->FRAME_RATE:I

    const/4 p1, 0x0

    .line 316
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;II)V
    .locals 0

    .line 311
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->play(II)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;)Z
    .locals 0

    .line 311
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->isPlayEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;Z)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->seekIndex(Z)V

    return-void
.end method

.method private isPlayEnd()Z
    .locals 1

    .line 338
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    const/16 v0, 0x76

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private play(II)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->setDrawRect(II)V

    .line 333
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->removeMessages(I)V

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private seekIndex(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x76

    .line 328
    :goto_0
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    return-void
.end method

.method private setDrawRect(II)V
    .locals 2

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->rootRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 342
    iget p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    if-nez p1, :cond_0

    .line 343
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    const-string v0, "bitmap play begin"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    .line 345
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    const/16 v0, 0x76

    if-gt p1, v0, :cond_6

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 347
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$600(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 349
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 350
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$700(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$700(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->rootRect:Landroid/graphics/Rect;

    iget v5, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    invoke-virtual {v3, p1, v4, v5}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 353
    :cond_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$600(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 354
    iget p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    .line 356
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 357
    iget p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->FRAME_RATE:I

    .line 358
    iget v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->index:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_3

    const/16 v1, 0xc

    if-gt v0, v1, :cond_3

    const/16 p1, 0x19

    goto :goto_0

    :cond_3
    const/16 v1, 0x63

    if-lt v0, v1, :cond_4

    const/16 v1, 0x68

    if-gt v0, v1, :cond_4

    const/16 p1, 0x1e

    :cond_4
    :goto_0
    int-to-long v0, p1

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-gtz p1, :cond_5

    const/4 p1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 369
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->removeMessages(I)V

    .line 370
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 373
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$000(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 374
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    const-string v0, "bitmap play end"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    .line 375
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$000(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;->onPlayEnd()V

    :cond_7
    :goto_1
    return-void
.end method
