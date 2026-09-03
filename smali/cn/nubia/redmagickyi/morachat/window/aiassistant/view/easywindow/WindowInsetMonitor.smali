.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;
.super Ljava/lang/Object;
.source "WindowInsetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;
    }
.end annotation


# instance fields
.field private decorView:Landroid/view/View;

.field private insetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private isNavigationBarShowing:Ljava/lang/Boolean;

.field private onWindowInsetsChangedCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->insetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->setIsNavigationBarShowing(Z)V

    return-void
.end method

.method private setIsNavigationBarShowing(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->isNavigationBarShowing:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->onWindowInsetsChangedCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;->onNavigationBarShowingStateChanged(Z)V

    .line 58
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->isNavigationBarShowing:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getNavigationBarShowing()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->isNavigationBarShowing:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isNavigationBarShowing(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->setIsNavigationBarShowing(Z)V

    .line 49
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->isNavigationBarShowing:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public registerCallback(Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->decorView:Landroid/view/View;

    .line 23
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->onWindowInsetsChangedCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->insetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->decorView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method
