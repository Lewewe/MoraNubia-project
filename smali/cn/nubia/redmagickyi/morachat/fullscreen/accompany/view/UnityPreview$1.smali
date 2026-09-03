.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->initBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCreated:Z

.field private landscapeBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private portaitBitmap:Landroid/graphics/Bitmap;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawBackground(II)V
    .locals 4

    .line 147
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->isCreated:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 152
    :try_start_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 154
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->portaitBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 157
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_fs_accompany_background:I

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    invoke-static {v1, p1, p2}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleAndCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 160
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_1
    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->portaitBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->landscapeBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 167
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_fs_accompany_background_landscape:I

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 169
    invoke-static {v1, p1, p2}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleAndCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    :cond_4
    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->landscapeBitmap:Landroid/graphics/Bitmap;

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 177
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_6

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {v0, v2, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 181
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_6
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 184
    throw p1

    :cond_7
    :goto_3
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->isCreated:Z

    .line 137
    invoke-virtual {p0, p3, p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->drawBackground(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;->isCreated:Z

    return-void
.end method
