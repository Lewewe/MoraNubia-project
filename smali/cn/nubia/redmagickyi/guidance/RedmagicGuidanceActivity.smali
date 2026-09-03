.class public Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "RedmagicGuidanceActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/AudioFocus$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;


# static fields
.field private static SKIP_GONE:I = 0x0

.field private static final SPLITE_SHOW_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "RedmagicGuidanceActivity"

.field private static final VIDEO_VIEW_LANDSCAPE_PREPAER:I = 0xfa0

.field private static final VIDEO_VIEW_PORTRAIT_PREPAER:I = 0xbb8

.field private static final splitArray:[F

.field private static final splitInt:[I


# instance fields
.field private animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

.field private animatedViewFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

.field private frameLayoutBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

.field private frameLayoutFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

.field private handler:Landroid/os/Handler;

.field private landscapeVideoPrepared:Z

.field private landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

.field private periodicTask:Ljava/lang/Runnable;

.field private portraitVideoPrepared:Z

.field private portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

.field showDelay:I

.field private skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

.field private spitePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->splitArray:[F

    const/16 v0, 0x4650

    const v1, 0x8d68

    .line 42
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->splitInt:[I

    const v0, 0x11d28

    .line 43
    sput v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->SKIP_GONE:I

    return-void

    nop

    :array_0
    .array-data 4
        0x469ab000    # 19800.0f
        0x47172c00    # 38700.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    .line 49
    iput-object v1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    .line 51
    iput v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showDelay:I

    .line 52
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoPrepared:Z

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoPrepared:Z

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->handler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->periodicTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoPrepared:Z

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoPrepared:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoPrepared:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    return-object p0
.end method

.method private getLandscapeVideoPath()Ljava/lang/String;
    .locals 1

    .line 320
    const-string v0, "video/guide/redmagic_guidance_landscape.mp4"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->isAssetsValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getPortraitVideoPath()Ljava/lang/String;
    .locals 1

    .line 314
    const-string v0, "video/guide/redmagic_guidance.mp4"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->isAssetsValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isAssetsValid(Ljava/lang/String;)Z
    .locals 0

    .line 326
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 334
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 338
    throw p0

    :catch_1
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$1(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private updateUI(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 562
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz p1, :cond_0

    .line 563
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 564
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 565
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 566
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz p1, :cond_3

    .line 569
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 570
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 571
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 572
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz p1, :cond_2

    .line 576
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 577
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 578
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 579
    iget-object v1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/util/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz p1, :cond_3

    .line 582
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 583
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 584
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 585
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public btnClick(Z)V
    .locals 5

    .line 498
    iget v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    sget-object v1, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->splitArray:[F

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 499
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->onDestroy()V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_6

    .line 505
    :cond_1
    array-length v3, v1

    if-ge v0, v3, :cond_5

    if-eqz p1, :cond_3

    .line 507
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 508
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getPortraitVideoPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    aget v4, v1, v4

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4, v0}, Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;IZ)V

    .line 510
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz p1, :cond_4

    .line 511
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getLandscapeVideoPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    aget v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {p1, v3, v1, v0}, Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 514
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->play()V

    .line 516
    :cond_4
    :goto_0
    iget p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    .line 517
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->startTask()V

    goto :goto_1

    .line 519
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->onDestroy()V

    :cond_6
    :goto_1
    return-void
.end method

.method public goneWithView()V
    .locals 1

    .line 468
    new-instance v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1702

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 354
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 355
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 356
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public initGuidanceVideoView()V
    .locals 9

    .line 217
    const-string v0, "initGuidanceVideoView:"

    const-string v1, "RedmagicGuidanceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->videoview_portrait:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/VideoView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    .line 219
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getPortraitVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v2, "setOnPlayListener:"

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 221
    iget-object v7, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v7, v4}, Lcn/nubia/redmagickyi/util/VideoView;->setVisibility(I)V

    .line 222
    iget-object v7, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v7, p0}, Lcn/nubia/redmagickyi/util/VideoView;->setSurfaceCallback(Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;)V

    .line 223
    iget-object v7, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v7, p0}, Lcn/nubia/redmagickyi/util/VideoView;->setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    .line 224
    iget-object v7, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v7, v6}, Lcn/nubia/redmagickyi/util/VideoView;->setHaveVoice(Z)V

    .line 225
    iget-object v7, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v7, v6}, Lcn/nubia/redmagickyi/util/VideoView;->setFullScreen(Z)V

    .line 226
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v7, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    new-instance v8, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;

    invoke-direct {v8, p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V

    invoke-virtual {v7, v8}, Lcn/nubia/redmagickyi/util/VideoView;->setOnPlayListener(Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;)V

    .line 259
    iget-object v7, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v7, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    iput-boolean v6, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoPrepared:Z

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/VideoView;->setVisibility(I)V

    .line 263
    iput-object v5, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    .line 266
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->videoview_landscape:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/VideoView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    .line 267
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getLandscapeVideoPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v3, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/util/VideoView;->setVisibility(I)V

    .line 270
    iget-object v3, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/util/VideoView;->setSurfaceCallback(Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;)V

    .line 271
    iget-object v3, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/util/VideoView;->setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    .line 272
    iget-object v3, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/util/VideoView;->setHaveVoice(Z)V

    .line 273
    iget-object v3, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v3, v6}, Lcn/nubia/redmagickyi/util/VideoView;->setFullScreen(Z)V

    .line 274
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    new-instance v2, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$5;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$5;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/VideoView;->setOnPlayListener(Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;)V

    .line 303
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_1
    iput-boolean v6, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoPrepared:Z

    .line 306
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/VideoView;->setVisibility(I)V

    .line 307
    iput-object v5, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 421
    const-string v0, "onClick:"

    const-string v1, "RedmagicGuidanceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->strat_right_now_layout_fg:I

    const/4 v3, 0x0

    const-string v4, "strat_right_now_layout:"

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->strat_right_now_layout_bg:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->skip_layout:I

    if-ne v0, v2, :cond_1

    .line 426
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play"

    const-string v2, "skip"

    const-string v3, "oobe_video_mora"

    invoke-virtual {p1, v0, v3, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->onDestroy()V

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->guide_commit_layout_fg:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->guide_commit_layout_bg:I

    if-ne p1, v0, :cond_4

    .line 430
    :cond_2
    const-string p1, "guide_commit_layout:"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->btnClick(Z)V

    goto :goto_1

    .line 423
    :cond_3
    :goto_0
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->btnClick(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 555
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 556
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 557
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->updateUI(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->requestWindowFeature(I)Z

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->hideBottomUIMenu()V

    .line 151
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_guidance_layout:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->setContentView(I)V

    .line 152
    const-string p1, "RedmagicGuidanceActivity"

    const-string v1, "onCreate:"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 154
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 156
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->setRequestedOrientation(I)V

    .line 158
    :goto_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->strat_right_now_layout_fg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    .line 159
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation()V

    .line 161
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setClickScale(F)V

    .line 162
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressScale(F)V

    .line 163
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    const/16 v2, 0xc8

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressDelay(I)V

    .line 164
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->strat_right_now_layout_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    .line 165
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation()V

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setClickScale(F)V

    .line 168
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressScale(F)V

    .line 169
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressDelay(I)V

    .line 170
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->animatedViewBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    new-instance v3, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {p1, v3, v4, v5}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->skip_layout:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    .line 184
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation()V

    .line 187
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setClickScale(F)V

    .line 188
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressScale(F)V

    .line 189
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressDelay(I)V

    .line 190
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->guide_commit_layout_fg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    .line 191
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    new-instance v4, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v4}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setClickScale(F)V

    .line 198
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressScale(F)V

    .line 199
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutFg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressDelay(I)V

    .line 200
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->guide_commit_layout_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    .line 201
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    new-instance v4, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v4}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 207
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setClickScale(F)V

    .line 208
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressScale(F)V

    .line 209
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->frameLayoutBg:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLongPressDelay(I)V

    .line 210
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->initGuidanceVideoView()V

    .line 211
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->updateUI(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 378
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 379
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    .line 381
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->release()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    .line 385
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->release()V

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->stopTask()V

    .line 390
    invoke-static {p0}, Lcn/nubia/redmagickyi/guidance/utils/MojiAnimatorBroadcastSender;->sendMojiAnimatorEndBroadcast(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle launch failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RedmagicGuidanceActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    .line 396
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onGainFocus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLossFocus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLossFocusTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onProgressUpdate(II)V
    .locals 3

    .line 107
    sget p2, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->SKIP_GONE:I

    if-lt p1, p2, :cond_0

    .line 108
    iget-object p2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipLayout:Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 110
    :cond_0
    iget p2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    sget-object v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->splitInt:[I

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 111
    aget v1, v0, p2

    add-int/lit16 v1, v1, 0x7d0

    iput v1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showDelay:I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_3

    if-nez p2, :cond_2

    .line 115
    aget p2, v0, v1

    if-lt p1, p2, :cond_2

    iget p2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showDelay:I

    if-gt p1, p2, :cond_2

    .line 116
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showWithView(Z)V

    goto :goto_0

    .line 118
    :cond_2
    iget p2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showDelay:I

    if-gt p1, p2, :cond_6

    .line 119
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->goneWithView()V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_5

    .line 123
    aget p2, v0, v2

    if-lt p1, p2, :cond_4

    iget p2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showDelay:I

    if-gt p1, p2, :cond_4

    .line 124
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showWithView(Z)V

    goto :goto_0

    .line 126
    :cond_4
    iget p2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showDelay:I

    if-gt p1, p2, :cond_6

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->goneWithView()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->goneWithView()V

    .line 133
    :cond_6
    :goto_0
    sget p2, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->SKIP_GONE:I

    if-lt p1, p2, :cond_7

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->skipGone()V

    .line 136
    :cond_7
    sget-object p2, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->splitArray:[F

    if-eqz p2, :cond_9

    array-length v0, p2

    if-eqz v0, :cond_9

    iget v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->spitePos:I

    if-gez v0, :cond_8

    goto :goto_1

    .line 140
    :cond_8
    array-length v1, p2

    if-ge v0, v1, :cond_9

    aget p2, p2, v0

    float-to-int p2, p2

    if-lt p1, p2, :cond_9

    .line 141
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->pause()V

    .line 142
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->stopTask()V

    :cond_9
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 4

    .line 534
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    const-string v1, "videoView.resume()videoView.resume()videoView.resume()"

    const-string v2, "videoView == null"

    const-string v3, "RedmagicGuidanceActivity"

    if-nez v0, :cond_0

    .line 535
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    :cond_1
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->portraitVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->resume()V

    .line 543
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    if-nez v0, :cond_3

    .line 544
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 546
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPause()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    :cond_4
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->landscapeVideoView:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->resume()V

    :cond_5
    :goto_1
    return-void
.end method

.method public showWithView(Z)V
    .locals 1

    .line 436
    new-instance v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Z)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public skipGone()V
    .locals 1

    .line 487
    new-instance v0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$8;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$8;-><init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTask()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->periodicTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopTask()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->periodicTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 362
    const-string p1, "RedmagicGuidanceActivity"

    const-string v0, "onResume"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->startTask()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 371
    const-string p1, "RedmagicGuidanceActivity"

    const-string v0, "onPause"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->stopTask()V

    return-void
.end method
