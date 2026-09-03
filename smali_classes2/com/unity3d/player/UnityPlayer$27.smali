.class Lcom/unity3d/player/UnityPlayer$27;
.super Landroid/view/OrientationEventListener;
.source "UnityPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->startOrientationListener(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1310
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$27;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$27;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$27;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$3100(Lcom/unity3d/player/UnityPlayer;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$e;->a(II)V

    return-void
.end method
