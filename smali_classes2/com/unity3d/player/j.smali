.class final Lcom/unity3d/player/j;
.super Ljava/lang/Object;
.source "j.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/j$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field b:Landroid/app/Activity;

.field c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unity3d/player/j;->a:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object v1, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    .line 36
    instance-of v0, p1, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/UnityContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 39
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/unity3d/player/j;->b:Landroid/app/Activity;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/unity3d/player/j;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/SurfaceView;)V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/unity3d/player/k;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/j;->b:Landroid/app/Activity;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/unity3d/player/j$a;

    iget-object v1, p0, Lcom/unity3d/player/j;->b:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/j$a;-><init>(Lcom/unity3d/player/j;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/unity3d/player/j$a;->a(Landroid/view/SurfaceView;)V

    .line 58
    iput-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/TextureView;)V
    .locals 2

    .line 63
    sget-boolean v0, Lcom/unity3d/player/k;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/j;->b:Landroid/app/Activity;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/unity3d/player/j$a;

    iget-object v1, p0, Lcom/unity3d/player/j;->b:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/j$a;-><init>(Lcom/unity3d/player/j;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/unity3d/player/j$a;->a(Landroid/view/TextureView;)V

    .line 66
    iput-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object p0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/unity3d/player/j;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unity3d/player/j;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
