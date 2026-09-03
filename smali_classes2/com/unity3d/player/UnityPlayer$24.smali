.class Lcom/unity3d/player/UnityPlayer$24;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Lcom/unity3d/player/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->showVideoPlayer(Ljava/lang/String;IIIZII)Z
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

    .line 1061
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$24;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1063
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$24;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/unity3d/player/UnityPlayer;->access$2702(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/r;)Lcom/unity3d/player/r;

    return-void
.end method
