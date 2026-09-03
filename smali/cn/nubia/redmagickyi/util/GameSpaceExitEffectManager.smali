.class public Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;
.super Ljava/lang/Object;
.source "GameSpaceExitEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;,
        Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;,
        Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_ANIM_COMPLETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GameSpaceExitEffectManager"


# instance fields
.field private cacheBitmaps:[Landroid/graphics/Bitmap;

.field private callback:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;

.field private context:Landroid/content/Context;

.field private drawHandler:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

.field private drawHandlerThread:Landroid/os/HandlerThread;

.field private effectView:Landroid/view/TextureView;

.field private isReadyPlay:Z

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private readThread:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->preload(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->isReadyPlay:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandler:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->cacheBitmaps:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->cacheBitmaps:[Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->readThread:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->callback:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Landroid/view/TextureView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->effectView:Landroid/view/TextureView;

    return-object p0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 268
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, 0x2

    .line 269
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x608

    .line 270
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, -0x1

    .line 271
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 272
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x1

    .line 273
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, -0x3

    .line 274
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x800033

    .line 275
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p0
.end method

.method private initPreloadView()V
    .locals 2

    .line 71
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->effectView:Landroid/view/TextureView;

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->effectView:Landroid/view/TextureView;

    new-instance v1, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;-><init>(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private initThread()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->readThread:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;-><init>(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->readThread:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;

    .line 57
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->start()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrawHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandlerThread:Landroid/os/HandlerThread;

    .line 62
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandler:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    if-nez v0, :cond_3

    .line 66
    new-instance v0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;-><init>(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandler:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    :cond_3
    return-void
.end method

.method private preload(Landroid/content/Context;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->context:Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->windowManager:Landroid/view/WindowManager;

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->initThread()V

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->initPreloadView()V

    return-void
.end method


# virtual methods
.method public play(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->isReadyPlay:Z

    .line 103
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->callback:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;

    .line 104
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->lp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    .line 105
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->effectView:Landroid/view/TextureView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;->onPlayBegin()V

    .line 111
    :cond_0
    const-string p0, "GameSpaceExitEffectManager"

    const-string p1, "bitmap perform play"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 4

    .line 116
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->effectView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->drawHandler:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->cacheBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 119
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->cacheBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 120
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->cacheBitmaps:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :catch_0
    const-string p0, "GameSpaceExitEffectManager"

    const-string v0, "release failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
