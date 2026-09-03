.class Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;
.super Landroid/os/Handler;
.source "GameSpaceExitEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# instance fields
.field private index:I

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;Landroid/os/Looper;)V
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

    .line 218
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    .line 219
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 214
    iput p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->index:I

    .line 220
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->initPaintConfig()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;II)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->setDrawRect(II)V

    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$800(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 255
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 257
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    const/4 v2, 0x0

    .line 262
    iget-object v3, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 263
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$800(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private initPaintConfig()V
    .locals 2

    .line 248
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 249
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 250
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setDrawRect(II)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->rect:Landroid/graphics/Rect;

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->rect:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 233
    iget p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->index:I

    const-string v0, "GameSpaceExitEffectManager"

    if-nez p1, :cond_0

    .line 234
    const-string p1, "bitmap play begin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$500(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;

    move-result-object p1

    iget v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->index:I

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->access$600(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$100(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$100(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    move-result-object v0

    const-wide/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 240
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->drawBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$700(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 242
    const-string p1, "bitmap play end"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$700(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;->onPlayEnd()V

    :cond_2
    :goto_0
    return-void
.end method
