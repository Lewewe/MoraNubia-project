.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor$1;
.super Ljava/lang/Object;
.source "WindowInsetMonitor.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    if-eqz p2, :cond_0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/CommonUtils;->isNavigationBarShowing(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;Z)V

    :cond_0
    return-object p2
.end method
