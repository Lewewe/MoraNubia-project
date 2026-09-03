.class Lcom/unity3d/player/UnityPlayer$21;
.super Lcom/unity3d/player/UnityPlayer$f;
.source "UnityPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->reportSoftInputIsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;

.field final synthetic val$var1:Z


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 970
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$21;->this$0:Lcom/unity3d/player/UnityPlayer;

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer$21;->val$var1:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$f;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer$1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$21;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-boolean p0, p0, Lcom/unity3d/player/UnityPlayer$21;->val$var1:Z

    invoke-static {v0, p0}, Lcom/unity3d/player/UnityPlayer;->access$2500(Lcom/unity3d/player/UnityPlayer;Z)V

    return-void
.end method
