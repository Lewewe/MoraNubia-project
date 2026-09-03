.class Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;
.super Ljava/lang/Object;
.source "ARCameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity surfaceChanged, format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ARCameraActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;->mHolder:Landroid/view/SurfaceHolder;

    .line 162
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 163
    sget-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 154
    const-string v0, "ARCameraActivity"

    const-string v1, "Unity surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 169
    const-string p1, "ARCameraActivity"

    const-string v0, "Unity surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 171
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    :cond_0
    return-void
.end method
