.class Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView$1;
.super Ljava/lang/Object;
.source "UnitySurfaceView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView$1;->this$0:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView$1;->this$0:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lockFrameRate()V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView$1;->this$0:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lockFrameRate()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
