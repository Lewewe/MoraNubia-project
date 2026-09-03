.class Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback$1;
.super Landroid/os/Handler;
.source "UnityPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

.field final synthetic val$this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Landroid/os/Looper;Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback$1;->this$1:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    iput-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback$1;->val$this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 643
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "UnityPreview"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback$1;->this$1:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$700(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p0

    .line 653
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "================ MSG_PAUSE: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2

    .line 655
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pauseVoice()V

    goto :goto_0

    .line 645
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback$1;->this$1:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$700(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p0

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "================ MSG_RESUME: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2

    .line 648
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resumeVoice()V

    :cond_2
    :goto_0
    return-void
.end method
