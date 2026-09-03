.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->initView(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:Lcn/nubia/redmagickyi/util/Counter;

.field private frameBitmap:Landroid/graphics/Bitmap;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->frameBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->quitUnityNotBlack()V

    return-void
.end method

.method private queryUnityNotBlack()V
    .locals 3

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "queryUnityNotBlack"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handlerThread:Landroid/os/HandlerThread;

    .line 101
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceWidth()I

    move-result v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->frameBitmap:Landroid/graphics/Bitmap;

    .line 105
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handler:Landroid/os/Handler;

    const/4 p0, 0x0

    .line 131
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private quitUnityNotBlack()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->counter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handler:Landroid/os/Handler;

    .line 142
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 144
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->handlerThread:Landroid/os/HandlerThread;

    .line 146
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->frameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->frameBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method


# virtual methods
.method public fadeOut(Landroid/view/View;J)V
    .locals 2

    .line 154
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;Landroid/view/View;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 163
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->counter:Lcn/nubia/redmagickyi/util/Counter;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onModelReady()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->queryUnityNotBlack()V

    return-void
.end method
