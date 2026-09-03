.class Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2$1;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 499
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2$1;->this$1:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 p0, 0x3

    const/4 v0, 0x0

    .line 503
    invoke-static {p0, v0, v0, v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    return-void
.end method
