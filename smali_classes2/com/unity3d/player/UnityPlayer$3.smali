.class Lcom/unity3d/player/UnityPlayer$3;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->CreateGlView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCreated:Z

.field private surface:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

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

    .line 256
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$3;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private getSurface(Landroid/graphics/SurfaceTexture;Z)Landroid/view/Surface;
    .locals 1

    if-nez p2, :cond_0

    .line 261
    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer$3;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 262
    :cond_0
    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer$3;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 264
    :cond_1
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$3;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0
.end method

.method private surfaceChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x1

    .line 296
    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer$3;->isCreated:Z

    .line 297
    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/unity3d/player/UnityPlayer$3;->getSurface(Landroid/graphics/SurfaceTexture;Z)Landroid/view/Surface;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/unity3d/player/UnityPlayer;->access$400(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    .line 298
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$600(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method private surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer$3;->isCreated:Z

    .line 289
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer$3;->getSurface(Landroid/graphics/SurfaceTexture;Z)Landroid/view/Surface;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/unity3d/player/UnityPlayer;->access$400(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    .line 290
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object p1

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p0}, Lcom/unity3d/player/j;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer$3;->isCreated:Z

    .line 303
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/j;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->access$700(Lcom/unity3d/player/UnityPlayer;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/j;->a(Landroid/view/TextureView;)V

    .line 307
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$3;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/Surface;

    invoke-static {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->access$400(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$3;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer$3;->surfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$3;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer$3;->surfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
