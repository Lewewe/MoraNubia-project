.class Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$3;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->changeUnitySkin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$3;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 602
    const-string v0, "UnityPreview"

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$3;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$600(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    move-result-object p0

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->getCurrentSpeakVia(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->getCurrentSpeakWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$400(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
