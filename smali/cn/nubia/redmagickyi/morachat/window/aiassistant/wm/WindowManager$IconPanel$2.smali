.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$2;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable$DraggingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->createSmallIconDragger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDragging(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 524
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$4400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->access$4500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;)V

    .line 525
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$4400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;)V

    return-void
.end method

.method public onStopDragging(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
