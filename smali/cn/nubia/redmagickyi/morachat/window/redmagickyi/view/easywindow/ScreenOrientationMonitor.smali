.class final Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor;
.super Ljava/lang/Object;
.source "ScreenOrientationMonitor.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;

.field private mScreenOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor;->mScreenOrientation:I

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 40
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor;->mScreenOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    return-void

    .line 43
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor;->mScreenOrientation:I

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor;->mCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;

    if-nez p0, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;->onScreenOrientationChange(I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method registerCallback(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 27
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor;->mCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;

    return-void
.end method

.method unregisterCallback(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor;->mCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;

    return-void
.end method
