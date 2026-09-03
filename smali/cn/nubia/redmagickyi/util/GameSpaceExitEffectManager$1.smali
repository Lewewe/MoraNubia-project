.class Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;
.super Ljava/lang/Object;
.source "GameSpaceExitEffectManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->initPreloadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 76
    const-string p1, "GameSpaceExitEffectManager"

    const-string v0, "onSurfaceTextureAvailable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$000(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$100(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->access$200(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;II)V

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$100(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->removeMessages(I)V

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$100(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$DrawHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 91
    const-string p0, "GameSpaceExitEffectManager"

    const-string p1, "onSurfaceTextureDestroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 86
    const-string p0, "GameSpaceExitEffectManager"

    const-string p1, "onSurfaceTextureSizeChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
