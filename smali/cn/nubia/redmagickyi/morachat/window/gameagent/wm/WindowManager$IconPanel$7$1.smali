.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$1;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->animIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 743
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCounterValueChanged(FZ)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$3900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setAlpha(F)V

    if-eqz p2, :cond_0

    .line 748
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$4000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->setAlpha(F)V

    :cond_0
    return-void
.end method
