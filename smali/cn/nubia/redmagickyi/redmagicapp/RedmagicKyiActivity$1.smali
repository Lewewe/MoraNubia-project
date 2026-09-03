.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$1;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 168
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

    const-string p3, "RedmagicKyiActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$1;->mHolder:Landroid/view/SurfaceHolder;

    .line 170
    sget-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$1;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 162
    const-string v0, "RedmagicKyiActivity"

    const-string v1, "Unity surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$1;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 175
    const-string p0, "RedmagicKyiActivity"

    const-string p1, "Unity surfaceDestroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method
