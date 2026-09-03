.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;
.super Landroid/view/SurfaceView;
.source "IconPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmapListening:Landroid/graphics/Bitmap;

.field private bitmapSayingMute:Landroid/graphics/Bitmap;

.field private bitmapSayingUnmute:Landroid/graphics/Bitmap;

.field private bitmapSleeping:Landroid/graphics/Bitmap;

.field private bitmapThinking:Landroid/graphics/Bitmap;

.field private isCreated:Z

.field private isLargeIcon:Z

.field private isMute:Z

.field private paint:Landroid/graphics/Paint;

.field private state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

.field private windowAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconPreview-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 33
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;->Sleeping:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->windowAlpha:F

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;->Sleeping:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->windowAlpha:F

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;->Sleeping:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->windowAlpha:F

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->init()V

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;->Sleeping:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    if-ne v0, v1, :cond_0

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSleeping:Landroid/graphics/Bitmap;

    return-object p0

    .line 145
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;->Listening:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    if-ne v0, v1, :cond_1

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapListening:Landroid/graphics/Bitmap;

    return-object p0

    .line 147
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;->Thinking:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    if-ne v0, v1, :cond_2

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapThinking:Landroid/graphics/Bitmap;

    return-object p0

    .line 149
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;->Saying:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    if-ne v0, v1, :cond_4

    .line 150
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isMute:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSayingMute:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSayingUnmute:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0

    .line 152
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSleeping:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private getIconSize()I
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isLargeIcon:Z

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_large_width:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_small_width:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 2

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->paint:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->setZOrderOnTop(Z)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSleeping:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_human_sleeping:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSleeping:Landroid/graphics/Bitmap;

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapListening:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_human_listening:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapListening:Landroid/graphics/Bitmap;

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapThinking:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_human_thinking:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapThinking:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSayingMute:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_human_saying_mute:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSayingMute:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSayingUnmute:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_human_saying_unmute:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->bitmapSayingUnmute:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected handleDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 133
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 138
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getIconSize()I

    move-result v3

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getIconSize()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getBestRect(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onWindowAlphaChanged(F)V
    .locals 1

    .line 81
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->windowAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 82
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->windowAlpha:F

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->refreshUI()V

    :cond_0
    return-void
.end method

.method public refreshUI()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->handleDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 123
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 126
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public setIconState(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    if-eq v0, p1, :cond_0

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconState;

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setLargeIcon(Z)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isLargeIcon:Z

    if-eq v0, p1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isLargeIcon:Z

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isMute:Z

    if-eq v0, p1, :cond_0

    .line 89
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isMute:Z

    .line 90
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->refreshUI()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 105
    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "surfaceChanged = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isCreated:Z

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->refreshUI()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 100
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceCreated = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 112
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceDestroyed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->isCreated:Z

    return-void
.end method
