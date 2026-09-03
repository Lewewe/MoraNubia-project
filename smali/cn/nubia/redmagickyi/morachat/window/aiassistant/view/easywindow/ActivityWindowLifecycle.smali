.class final Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;
.super Ljava/lang/Object;
.source "ActivityWindowLifecycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v0, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->recycle()V

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method register()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method unregister()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
