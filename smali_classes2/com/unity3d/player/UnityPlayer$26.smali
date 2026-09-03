.class Lcom/unity3d/player/UnityPlayer$26;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->notifyOnUnityPlayerUnloaded()V
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

    .line 1084
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$26;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$26;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 1087
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$26;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 1088
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$26;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$3000(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$26;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$3000(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/player/IUnityPlayerLifecycleEvents;->onUnityPlayerUnloaded()V

    goto :goto_0

    .line 1091
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$26;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->onUnityPlayerUnloaded()V

    :goto_0
    return-void
.end method
