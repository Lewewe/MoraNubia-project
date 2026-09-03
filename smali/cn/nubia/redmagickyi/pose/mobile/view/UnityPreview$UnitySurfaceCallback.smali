.class Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnitySurfaceCallback"
.end annotation


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field private mVisibleSurfaces:I

.field private savedSkinId:Ljava/lang/Integer;

.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 4

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VisibilityChanged, visible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  FIRST_START = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$402(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Z)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 250
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    .line 251
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 254
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 255
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->ScreenUnLock()Z

    move-result p1

    const-string v2, "UnityPreview"

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$302(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Z)Z

    .line 257
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->resume()V

    .line 258
    const-string p1, "onVisibilityChanged resume"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$302(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Z)Z

    .line 261
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->resume()V

    .line 262
    const-string p1, "onVisibilityChanged FIRST_START resume"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p1

    .line 266
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->savedSkinId:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 267
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->savedSkinId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    .line 270
    :cond_4
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    return-void

    .line 273
    :cond_5
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    .line 274
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    if-nez p1, :cond_6

    .line 277
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 278
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 279
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$500(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 280
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->pause()V

    :cond_6
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 234
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->onVisibilityChanged(Z)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 243
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;->onVisibilityChanged(Z)V

    return-void
.end method
