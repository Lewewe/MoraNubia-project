.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;
.super Landroid/view/SurfaceView;
.source "IconPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IconPreview"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private isCreated:Z

.field private isLargeIcon:Ljava/lang/Boolean;

.field private listener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview$Listener;

.field private paint:Landroid/graphics/Paint;

.field private skin:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->init()V

    return-void
.end method

.method private getScene()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method private init()V
    .locals 2

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->paint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->setZOrderOnTop(Z)V

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private recycleBitmap()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 106
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result v0

    .line 109
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->listener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview$Listener;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview$Listener;->isLargeIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 111
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->skin:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->isLargeIcon:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 116
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->skin:Ljava/lang/Integer;

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->isLargeIcon:Ljava/lang/Boolean;

    goto :goto_2

    .line 112
    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->skin:Ljava/lang/Integer;

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->isLargeIcon:Ljava/lang/Boolean;

    .line 125
    :goto_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->recycleBitmap()V

    .line 126
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getScene()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanThumbnailManager;->getBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 127
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getScene()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isAvatarScene(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getScene()I

    move-result v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarWidth(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 134
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getScene()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarHeight(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 135
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getScene()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarWidth(I)I

    move-result v3

    .line 136
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getScene()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarHeight(I)I

    move-result v4

    .line 131
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_5

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 144
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_6

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 152
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2p5_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public refreshUI()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->skin:Ljava/lang/Integer;

    .line 87
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->recycleBitmap()V

    return-void

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->isCreated:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    :try_start_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->handleDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 96
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 99
    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method public setListener(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview$Listener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->listener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview$Listener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "surfaceChanged = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconPreview"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->isCreated:Z

    .line 74
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->refreshUI()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "surfaceCreated = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconPreview"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceDestroyed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconPreview"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->isCreated:Z

    return-void
.end method
