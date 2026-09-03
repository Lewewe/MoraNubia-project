.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

.field final synthetic val$entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1615
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->val$entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1618
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$6100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->val$entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    .line 1619
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1620
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->val$entries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$6200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    .line 1622
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$6300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    goto :goto_0

    .line 1624
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    :goto_0
    return-void
.end method
