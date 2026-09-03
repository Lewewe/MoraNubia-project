.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
.super Ljava/lang/Object;
.source "EasyWindow.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnTouchListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnLongClickListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;"
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "FloatWindow"

.field private static final sWindowInstanceSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;

.field private mCaller:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/view/ViewGroup;

.field private mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

.field private mDuration:I

.field private mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;

.field private mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;

.field private mShowing:Z

.field private mTag:Ljava/lang/String;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 273
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 276
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 278
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 287
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setLayoutInDisplayCutoutMode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 290
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_2

    .line 291
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setSystemUiVisibility(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 294
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 299
    :cond_3
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/app/Activity;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;

    .line 301
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;->register()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x7d9

    .line 311
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setWindowType(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 318
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    .line 319
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mCaller:Ljava/lang/String;

    .line 320
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowLayout;

    invoke-direct {p2, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    .line 321
    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 323
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    .line 324
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 325
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 326
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 327
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x1030004

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 328
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 331
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x28

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 333
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setTrustedOverlay()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 335
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized cancelAll()V
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized cancelByClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;>;)V"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 73
    monitor-exit v0

    return-void

    .line 75
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized cancelByTag(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 91
    monitor-exit v0

    return-void

    .line 93
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized existShowing()Z
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 183
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 186
    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized existShowingByClass(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;>;)Z"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 194
    monitor-exit v0

    return v1

    .line 196
    :cond_0
    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v3, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 206
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 209
    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized existShowingByTag(Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 217
    monitor-exit v0

    return v1

    .line 220
    :cond_0
    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 221
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 222
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v3, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 230
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 233
    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized recycleAll()V
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 118
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized recycleByClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;>;)V"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 127
    monitor-exit v0

    return-void

    .line 129
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 142
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized recycleByTag(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 151
    monitor-exit v0

    return-void

    .line 154
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 167
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static with(Landroid/app/Activity;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1

    .line 45
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public static with(Landroid/app/Application;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 475
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public cancel()V
    .locals 3

    .line 986
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 994
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 997
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1000
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-eqz v1, :cond_1

    .line 1001
    invoke-interface {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowCancel(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1005
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mShowing:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mShowing:Z

    .line 1009
    throw v1
.end method

.method public enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TX;"
        }
    .end annotation

    .line 524
    const-string v0, "privateFlags"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p1, :cond_0

    and-int/lit8 p1, v1, -0x41

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x40

    .line 530
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->update()V

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1124
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1127
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDecorView()Landroid/view/ViewGroup;
    .locals 0

    .line 1117
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;
    .locals 0

    .line 1103
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1145
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1149
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getViewHeight()I
    .locals 0

    .line 1141
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    return p0
.end method

.method public getViewWidth()I
    .locals 0

    .line 1134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    return p0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 0

    .line 1089
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1096
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public hasWindowFlags(I)Z
    .locals 0

    .line 501
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 1082
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mShowing:Z

    return p0
.end method

.method synthetic lambda$setGravity$0$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-EasyWindow()V
    .locals 0

    .line 387
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setXOffset$1$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-EasyWindow()V
    .locals 0

    .line 401
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setYOffset$2$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-EasyWindow()V
    .locals 0

    .line 415
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method public onNavigationBarShowingStateChanged(Z)V
    .locals 0

    .line 1215
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1218
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-nez p0, :cond_1

    return-void

    .line 1221
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->onScreenOrientationChange()V

    return-void
.end method

.method public onScreenOrientationChange(I)V
    .locals 0

    .line 1201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1204
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-nez p0, :cond_1

    return-void

    .line 1207
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->onScreenOrientationChange()V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 1156
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1174
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 1166
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public postUpdate()V
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1020
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 1049
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->cancel()V

    .line 1052
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;

    if-eqz v0, :cond_1

    .line 1053
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;->unregisterCallback(Landroid/content/Context;)V

    .line 1055
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    if-eqz v0, :cond_2

    .line 1056
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;->unregisterCallback()V

    .line 1058
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-eqz v0, :cond_3

    .line 1059
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowRecycle(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    .line 1062
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;

    if-eqz v0, :cond_4

    .line 1063
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;->unregister()V

    :cond_4
    const/4 v0, 0x0

    .line 1065
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;

    .line 1066
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    .line 1067
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    .line 1068
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 1070
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ActivityWindowLifecycle;

    .line 1072
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;

    .line 1073
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    .line 1075
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 1181
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 1

    .line 1185
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 484
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public run()V
    .locals 0

    .line 1193
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->cancel()V

    return-void
.end method

.method public setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 518
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setBackgroundDimAmount(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 466
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0

    .line 457
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "amount must be a value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBitmapFormat(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 604
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setBlurBehindRadius(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    const/4 p1, 0x4

    .line 703
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 704
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    :cond_0
    return-object p0
.end method

.method public setButtonBrightness(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 671
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setColorMode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 692
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setContentView(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TX;"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 808
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 810
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 811
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 812
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 814
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 815
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 816
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 817
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 821
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v0, :cond_4

    .line 822
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 823
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v0, v1, :cond_3

    .line 825
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 827
    :cond_2
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 828
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v0, v1, :cond_3

    .line 830
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 834
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v0, :cond_4

    .line 836
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_4
    if-eqz p1, :cond_6

    .line 841
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_5

    .line 843
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 844
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 847
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 848
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 852
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setDecorView(Landroid/view/ViewGroup;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TX;"
        }
    .end annotation

    .line 793
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 735
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setDraggable(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;",
            ")TX;"
        }
    .end annotation

    .line 742
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    .line 745
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    const/16 v0, 0x200

    .line 747
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 749
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->init(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    .line 750
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->update()V

    .line 752
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->start()V

    .line 756
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;

    if-nez p1, :cond_1

    .line 757
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;

    .line 759
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor;->registerCallback(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;)V

    .line 761
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    if-nez p1, :cond_2

    .line 762
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    .line 764
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor;->registerCallback(Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;)V

    return-object p0
.end method

.method public setDuration(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 773
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDuration:I

    .line 774
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDuration:I

    if-eqz p1, :cond_0

    .line 775
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 776
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDuration:I

    int-to-long v0, p1

    invoke-virtual {p0, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p0
.end method

.method public setGravity(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 385
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    .line 386
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public setHeight(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 368
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_0

    .line 372
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setHorizontalMargin(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 595
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setLayoutInDisplayCutoutMode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 632
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setOnWindowLifecycle(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;",
            ")TX;"
        }
    .end annotation

    .line 785
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;

    return-object p0
.end method

.method public setOutsideTouchable(Z)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TX;"
        }
    .end annotation

    const/16 v0, 0x28

    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 446
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setPreferredDisplayModeId(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 643
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setPreferredRefreshRate(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 681
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setScreenBrightness(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 662
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setScreenOrientation(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 718
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setSoftInputMode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 p1, 0x8

    .line 558
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 559
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setSystemUiVisibility(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 613
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setTrustedOverlay()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Class;

    const-string v1, "setTrustedOverlay"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 541
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->update()V

    return-object p0
.end method

.method public setVerticalMargin(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 586
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setVerticalWeight(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 622
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWidth(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 351
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, p1, :cond_0

    .line 355
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowAlpha(F)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 577
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 493
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            ")TX;"
        }
    .end annotation

    .line 726
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 727
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowToken(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TX;"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 568
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowType(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 509
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setXOffset(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 399
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    .line 400
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 427
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 428
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->update()V

    .line 429
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-object p0
.end method

.method public setYOffset(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 413
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    .line 414
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public show()V
    .locals 4

    const-string/jumbo v0, "window create, x: "

    const-string v1, "FloatWindow-"

    .line 930
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_7

    .line 935
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mShowing:Z

    if-eqz v2, :cond_0

    .line 936
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->update()V

    return-void

    .line 940
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 941
    check-cast v2, Landroid/app/Activity;

    .line 942
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 944
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    .line 951
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 952
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 954
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mCaller:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 957
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mShowing:Z

    .line 959
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDuration:I

    if-eqz v0, :cond_4

    .line 960
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 961
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 964
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    if-eqz v0, :cond_5

    .line 965
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->init(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    .line 966
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->start()V

    .line 970
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-eqz v0, :cond_6

    .line 971
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowShow(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 978
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void

    .line 931
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "WindowParams and view cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x50

    .line 857
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->showAsDropDown(Landroid/view/View;I)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 861
    invoke-virtual {p0, p1, p2, v0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6

    .line 873
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_8

    .line 880
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 879
    invoke-static {p2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    const/4 v0, 0x2

    .line 883
    new-array v0, v0, [I

    .line 884
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 886
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 887
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 889
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 890
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    aget v4, v0, v3

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 891
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    and-int/lit8 p3, p2, 0x3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_2

    .line 894
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    if-nez p3, :cond_0

    .line 896
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    :cond_0
    if-nez p3, :cond_1

    .line 899
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 900
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 899
    invoke-virtual {p3, p4, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 901
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    .line 903
    :cond_1
    iget-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, p3

    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    and-int/lit8 p3, p2, 0x5

    const/4 p4, 0x5

    if-ne p3, p4, :cond_3

    .line 905
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    :goto_0
    and-int/lit8 p3, p2, 0x30

    const/16 p4, 0x30

    if-ne p3, p4, :cond_6

    .line 909
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_4

    .line 911
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    :cond_4
    if-nez p1, :cond_5

    .line 914
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 915
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 914
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->measure(II)V

    .line 916
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 918
    :cond_5
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_6
    const/16 p3, 0x50

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_7

    .line 920
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 923
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->show()V

    return-void

    .line 874
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WindowParams and view cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update()V
    .locals 3

    const-string/jumbo v0, "window update, x: "

    const-string v1, "FloatWindow-"

    .line 1027
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1031
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mCaller:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-nez v0, :cond_1

    return-void

    .line 1037
    :cond_1
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowUpdate(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1041
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
