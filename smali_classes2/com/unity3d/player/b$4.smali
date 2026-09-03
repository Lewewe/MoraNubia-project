.class Lcom/unity3d/player/b$4;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/b;-><init>(Lcom/unity3d/player/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/b;


# direct methods
.method constructor <init>(Lcom/unity3d/player/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/unity3d/player/b$4;->this$0:Lcom/unity3d/player/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/unity3d/player/b$4;->this$0:Lcom/unity3d/player/b;

    invoke-static {p0}, Lcom/unity3d/player/b;->access$400(Lcom/unity3d/player/b;)Lcom/unity3d/player/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/unity3d/player/d;->a(Ljava/lang/Object;)V

    return-void
.end method
