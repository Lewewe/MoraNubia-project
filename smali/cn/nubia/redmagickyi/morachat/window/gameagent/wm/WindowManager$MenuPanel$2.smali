.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1290
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V
    .locals 1

    .line 1293
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$5400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1296
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$5400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;->onOutputButtonClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    goto :goto_0

    .line 1299
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->hideCaption(Z)V

    .line 1300
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;Z)V

    :cond_1
    :goto_0
    return-void
.end method
