.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$DefaultMediaPlayerControl;
    }
.end annotation


# static fields
.field private static final MSG_TOGGLE_CONTROLLER_VISIBLE_STATE:I = 0x2

.field private static final MSG_UPDATE_LOADING_UI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private isDetachFromWindow:Z

.field private isDragging:Z

.field private isShowLoading:Z

.field private ivCover:Landroid/widget/ImageView;

.field private ivFunctionList:Landroid/widget/ImageView;

.field private ivFunctionRotate:Landroid/widget/ImageView;

.field private ivFunctionWallpaper:Landroid/widget/ImageView;

.field private ivPause:Landroid/widget/ImageView;

.field private ivPauseCenter:Landroid/widget/ImageView;

.field private layoutController:Landroid/view/View;

.field private layoutCover:Landroid/view/View;

.field private layoutFunctions:Landroid/view/View;

.field private loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

.field private mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

.field private mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

.field private sbProgress:Landroid/widget/SeekBar;

.field private tvAuthor:Landroid/widget/TextView;

.field private tvDesc:Landroid/widget/TextView;

.field private tvPublishTime:Landroid/widget/TextView;

.field private tvTimeCurrent:Landroid/widget/TextView;

.field private tvTimeEnd:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$DefaultMediaPlayerControl;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$DefaultMediaPlayerControl;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    .line 46
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvAuthor:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isDragging:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isDragging:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->showControllBar()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->hideControllerBar(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/view/LoadingView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutController:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutFunctions:Landroid/view/View;

    return-object p0
.end method

.method private hideControllerBar(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 388
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->access$1200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;Z)V

    goto :goto_1

    .line 390
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 391
    iput v1, v2, Landroid/os/Message;->what:I

    .line 392
    iput v0, v2, Landroid/os/Message;->arg1:I

    xor-int/lit8 v0, p1, 0x1

    .line 393
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 394
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xbb8

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method private setProgress(JJZ)V
    .locals 4

    .line 262
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isDragging:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    long-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    .line 268
    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 272
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 274
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/2addr v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    .line 276
    iget-object p5, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {p5, v0, v3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v1, v0, :cond_7

    .line 279
    :cond_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move p5, v3

    :cond_6
    invoke-virtual {v1, v0, p5}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 284
    :cond_7
    :goto_0
    iget-object p5, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvTimeCurrent:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvTimeEnd:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showControllBar()V
    .locals 2

    .line 399
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 400
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 401
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 402
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateLoadingUI(ZZ)V
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isShowLoading:Z

    if-eq v0, p1, :cond_1

    .line 352
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isShowLoading:Z

    .line 353
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 354
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 355
    iput v1, v0, Landroid/os/Message;->what:I

    .line 356
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 357
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x3e8

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public doPause()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->doPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->dance_studio_media_controller_pause_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getShortcut()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x3

    .line 422
    new-array v0, v0, [Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;

    .line 423
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutCover:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getPlayerShortcut()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    new-instance v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;-><init>()V

    aput-object v4, v0, v3

    .line 427
    invoke-virtual {v4, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    .line 429
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v2

    .line 430
    aget-object v6, v0, v3

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v7, v4, v5, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->setDst(Landroid/graphics/Rect;)V

    .line 433
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->getDrawingCache(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    new-instance v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;-><init>()V

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 436
    invoke-virtual {v4, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    aget-object v4, v0, v5

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v5, v3, v3, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->setDst(Landroid/graphics/Rect;)V

    .line 440
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getViewToBindedController()Landroid/view/View;

    move-result-object v1

    .line 442
    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->getDrawingCache(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 444
    new-instance v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;-><init>()V

    aput-object v4, v0, v2

    .line 445
    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    aget-object v2, v0, v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v4, v5, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->setDst(Landroid/graphics/Rect;)V

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getHeight()I

    move-result p0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->mergeBitmaps(II[Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isCurrentPage()Z
    .locals 0

    .line 415
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->isCurrentPage()Z

    move-result p0

    return p0
.end method

.method public onBuffering()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 116
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->ll_media_controller:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 117
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/DoubleClickListener;->isOnDoubleClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    goto/16 :goto_1

    .line 120
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 121
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutController:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 122
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->hideControllerBar(Z)V

    goto/16 :goto_1

    .line 124
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->showControllBar()V

    .line 125
    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->hideControllerBar(Z)V

    goto :goto_1

    .line 128
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_pause:I

    if-eq v0, p1, :cond_6

    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_pause_center:I

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 142
    :cond_3
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_function_wallpaper:I

    if-ne v0, p1, :cond_4

    .line 143
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->onClickWallpaper()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 144
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 145
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->hideControllerBar(Z)V

    goto :goto_1

    .line 147
    :cond_4
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_function_rotate:I

    if-ne v0, p1, :cond_5

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->onClickRotate()V

    goto :goto_1

    .line 149
    :cond_5
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_function_list:I

    if-ne v0, p1, :cond_8

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->onClickList()V

    goto :goto_1

    .line 129
    :cond_6
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->pauseOrResume()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 132
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->dance_studio_media_controller_play_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPauseCenter:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->dance_studio_media_controller_pause_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateLoadingUI(ZZ)V

    .line 258
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 67
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_functions:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutFunctions:Landroid/view/View;

    .line 68
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_cover:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutCover:Landroid/view/View;

    .line 69
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_controller:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutController:Landroid/view/View;

    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_cover:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivCover:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_loading:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/LoadingView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    .line 73
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sb_progress:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isShowLoading:Z

    .line 76
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_time_current:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvTimeCurrent:Landroid/widget/TextView;

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_time_end:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvTimeEnd:Landroid/widget/TextView;

    .line 78
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvTitle:Landroid/widget/TextView;

    .line 79
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_author:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvAuthor:Landroid/widget/TextView;

    .line 80
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_desc:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvDesc:Landroid/widget/TextView;

    .line 81
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_publishtime:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvPublishTime:Landroid/widget/TextView;

    .line 82
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_pause:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_pause_center:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPauseCenter:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_function_wallpaper:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivFunctionWallpaper:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivFunctionWallpaper:Landroid/widget/ImageView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_function_rotate:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivFunctionRotate:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_function_list:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivFunctionList:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 241
    const-string v0, "MediaController"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 242
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public onPrepare()V
    .locals 7

    .line 202
    const-string v0, "MediaController"

    const-string v1, "onPrepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateLoadingUI(ZZ)V

    .line 204
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 7

    .line 234
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isDetachFromWindow:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isDetachFromWindow:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 236
    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->setProgress(JJZ)V

    return-void
.end method

.method public onRenderingStart()V
    .locals 2

    .line 226
    const-string v0, "MediaController"

    const-string v1, "onRenderingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 228
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateLoadingUI(ZZ)V

    .line 229
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public onReset()V
    .locals 8

    .line 209
    const-string v0, "MediaController"

    const-string v1, "onReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateLoadingUI(ZZ)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p0

    .line 212
    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->setProgress(JJZ)V

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->dance_studio_media_controller_play_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPauseCenter:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 247
    const-string v0, "MediaController"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->onReset()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_controller:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 100
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutController:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->hideControllerBar(Z)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->showControllBar()V

    .line 105
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->hideControllerBar(Z)V

    :cond_1
    :goto_0
    return p2

    :cond_2
    return v1
.end method

.method public onViewHolderAttachedFromWindow()V
    .locals 13

    .line 159
    const-string v0, "MediaController"

    const-string v1, "onViewAttachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isDetachFromWindow:Z

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvAuthor:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvDesc:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvPublishTime:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->updateTextView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivCover:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->loadThumbnail(Landroid/widget/ImageView;)V

    .line 163
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->onReset()V

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->getSavedProgress()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->getTotalDuration()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->setProgress(JJZ)V

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    move-object v7, p0

    .line 169
    invoke-direct/range {v7 .. v12}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->setProgress(JJZ)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->sbProgress:Landroid/widget/SeekBar;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onViewHolderDetachedFromWindow()V
    .locals 2

    .line 193
    const-string v0, "MediaController"

    const-string v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->isDetachFromWindow:Z

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateLoadingUI(ZZ)V

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPause:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->dance_studio_media_controller_play_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->ivPauseCenter:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMediaPlayer(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    return-void
.end method

.method public updateUIState(ZZ)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->tvAuthor:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$2;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 368
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutFunctions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_functions_margin_bottom_landscape:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 371
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_28_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_functions_margin_bottom_portrait:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 374
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 376
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->layoutFunctions:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 379
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->showControllBar()V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 381
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->hideControllerBar(Z)V

    :cond_1
    return-void
.end method
