.class Lcom/unity3d/player/UnityPlayer$4;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->CreateGlView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 334
    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 p3, 0x0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/unity3d/player/UnityPlayer;->access$400(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    .line 335
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$600(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->access$400(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    .line 327
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object p1

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p0}, Lcom/unity3d/player/j;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 339
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$700(Lcom/unity3d/player/UnityPlayer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/unity3d/player/j;->a(Landroid/view/SurfaceView;)V

    .line 343
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$4;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->access$400(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    return-void
.end method
