.class Lcom/unity3d/player/UnityPlayer$25;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1066
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$25;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$25;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1600(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;

    move-result-object v0

    .line 1069
    instance-of v1, v0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v1, :cond_0

    .line 1070
    check-cast v0, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$25;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->access$2800(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1073
    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$25;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$2900(Lcom/unity3d/player/UnityPlayer;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method
