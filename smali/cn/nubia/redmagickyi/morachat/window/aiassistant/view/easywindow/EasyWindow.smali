.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
.super Ljava/lang/Object;
.source "EasyWindow.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnTouchListener;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnLongClickListener;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;",
        "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;"
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String;

.field private static final sWindowInstanceSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;

.field private mCaller:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/view/ViewGroup;

.field private mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

.field private mDuration:I

.field private mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;

.field private mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;

.field private mShowing:Z

.field private mTag:Ljava/lang/String;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatWindow-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 274
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 277
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 278
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 279
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 288
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setLayoutInDisplayCutoutMode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 291
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_2

    .line 292
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setSystemUiVisibility(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 295
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 300
    :cond_3
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;Landroid/app/Activity;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;

    .line 302
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->register()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x7d9

    .line 312
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setWindowType(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 319
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mCaller:Ljava/lang/String;

    .line 321
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowLayout;

    invoke-direct {p2, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    .line 322
    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 324
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    .line 325
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 326
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 327
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 328
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x1030004

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 329
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 332
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x28

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 334
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setTrustedOverlay()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 336
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized cancelAll()V
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
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
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;>;)V"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
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

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 92
    monitor-exit v0

    return-void

    .line 94
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
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

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    .line 176
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 184
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 187
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
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;>;)Z"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 195
    monitor-exit v0

    return v1

    .line 197
    :cond_0
    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v3, :cond_2

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 207
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 210
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

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 218
    monitor-exit v0

    return v1

    .line 221
    :cond_0
    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 222
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v3, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 231
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 234
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

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 119
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
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
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;>;)V"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 143
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
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

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 152
    monitor-exit v0

    return-void

    .line 155
    :cond_0
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 168
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static with(Landroid/app/Activity;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public static with(Landroid/app/Application;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 476
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public cancel()V
    .locals 3

    .line 989
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 997
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1000
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1003
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-eqz v1, :cond_1

    .line 1004
    invoke-interface {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowCancel(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
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

    .line 1008
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mShowing:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mShowing:Z

    .line 1012
    throw v1
.end method

.method public enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TX;"
        }
    .end annotation

    .line 525
    const-string v0, "privateFlags"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

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

    .line 531
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 533
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->update()V

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1127
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1130
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1113
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDecorView()Landroid/view/ViewGroup;
    .locals 0

    .line 1120
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getDraggable()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;
    .locals 0

    .line 1106
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1148
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getViewHeight()I
    .locals 0

    .line 1144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    return p0
.end method

.method public getViewWidth()I
    .locals 0

    .line 1137
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    return p0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1099
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public hasWindowFlags(I)Z
    .locals 0

    .line 502
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

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

    .line 1085
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mShowing:Z

    return p0
.end method

.method synthetic lambda$setGravity$0$cn-nubia-redmagickyi-morachat-window-aiassistant-view-easywindow-EasyWindow()V
    .locals 0

    .line 388
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setXOffset$1$cn-nubia-redmagickyi-morachat-window-aiassistant-view-easywindow-EasyWindow()V
    .locals 0

    .line 402
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setYOffset$2$cn-nubia-redmagickyi-morachat-window-aiassistant-view-easywindow-EasyWindow()V
    .locals 0

    .line 416
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method public onNavigationBarShowingStateChanged(Z)V
    .locals 0

    .line 1218
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1221
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-nez p0, :cond_1

    return-void

    .line 1224
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->onScreenOrientationChange()V

    return-void
.end method

.method public onScreenOrientationChange(I)V
    .locals 0

    .line 1204
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1207
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-nez p0, :cond_1

    return-void

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->onScreenOrientationChange()V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 1159
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1177
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

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

    .line 1169
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public postUpdate()V
    .locals 1

    .line 1019
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1023
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 1052
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->cancel()V

    .line 1055
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;

    if-eqz v0, :cond_1

    .line 1056
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;->unregisterCallback(Landroid/content/Context;)V

    .line 1058
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;

    if-eqz v0, :cond_2

    .line 1059
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->unregisterCallback()V

    .line 1061
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-eqz v0, :cond_3

    .line 1062
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowRecycle(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    .line 1065
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;

    if-eqz v0, :cond_4

    .line 1066
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;->unregister()V

    :cond_4
    const/4 v0, 0x0

    .line 1068
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;

    .line 1069
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    .line 1070
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    .line 1071
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 1073
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mActivityWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ActivityWindowLifecycle;

    .line 1075
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;

    .line 1076
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;

    .line 1078
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->sWindowInstanceSet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 1184
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 1

    .line 1188
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 485
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public run()V
    .locals 0

    .line 1196
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->cancel()V

    return-void
.end method

.method public setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 519
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setBackgroundDimAmount(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
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

    .line 460
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 467
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0

    .line 458
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "amount must be a value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBitmapFormat(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 607
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setBlurBehindRadius(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    const/4 p1, 0x4

    .line 706
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 707
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    :cond_0
    return-object p0
.end method

.method public setButtonBrightness(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 674
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setColorMode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 695
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setContentView(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TX;"
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 811
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 814
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 815
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 817
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 818
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 819
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 820
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 824
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v0, :cond_4

    .line 825
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 826
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v0, v1, :cond_3

    .line 828
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 830
    :cond_2
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 831
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v0, v1, :cond_3

    .line 833
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 837
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v0, :cond_4

    .line 839
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_4
    if-eqz p1, :cond_6

    .line 844
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_5

    .line 846
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 847
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 850
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 851
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 855
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setDecorView(Landroid/view/ViewGroup;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TX;"
        }
    .end annotation

    .line 796
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setDraggable()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 738
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/MovingDraggable;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/MovingDraggable;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setDraggable(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;",
            ")TX;"
        }
    .end annotation

    .line 745
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    .line 748
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/16 v0, 0x200

    .line 750
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 752
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->init(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    .line 753
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->update()V

    .line 755
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->start()V

    .line 759
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;

    if-nez p1, :cond_1

    .line 760
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;

    .line 762
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mScreenOrientationMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor;->registerCallback(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/ScreenOrientationMonitor$OnScreenOrientationCallback;)V

    .line 764
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;

    if-nez p1, :cond_2

    .line 765
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;

    .line 767
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowInsetMonitor:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor;->registerCallback(Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/WindowInsetMonitor$OnWindowInsetsChangedCallback;)V

    return-object p0
.end method

.method public setDuration(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 776
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDuration:I

    .line 777
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDuration:I

    if-eqz p1, :cond_0

    .line 778
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 779
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDuration:I

    int-to-long v0, p1

    invoke-virtual {p0, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p0
.end method

.method public setGravity(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 386
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    .line 387
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public setHeight(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 369
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_0

    .line 373
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setHorizontalMargin(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 598
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setLayoutInDisplayCutoutMode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 635
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setOnWindowLifecycle(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;",
            ")TX;"
        }
    .end annotation

    .line 788
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;

    return-object p0
.end method

.method public setOutsideTouchable(Z)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TX;"
        }
    .end annotation

    const/16 v0, 0x28

    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 447
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setPreferredDisplayModeId(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 646
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setPreferredRefreshRate(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 684
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setScreenBrightness(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 665
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setScreenOrientation(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 721
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setSoftInputMode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 p1, 0x8

    .line 559
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 560
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setSystemUiVisibility(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 616
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setTrustedOverlay()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Class;

    const-string v1, "setTrustedOverlay"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 542
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->update()V

    return-object p0
.end method

.method public setVerticalMargin(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 589
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setVerticalWeight(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 625
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWidth(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 352
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 355
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, p1, :cond_0

    .line 356
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowAlpha(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 579
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    :cond_0
    return-object p0
.end method

.method public setWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 494
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            ")TX;"
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 730
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 656
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowToken(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TX;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 569
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowType(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 510
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setXOffset(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 400
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    .line 401
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 428
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 429
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->update()V

    .line 430
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-object p0
.end method

.method public setYOffset(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 414
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postUpdate()V

    .line 415
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public show()V
    .locals 3

    const-string/jumbo v0, "window create, x: "

    .line 933
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_7

    .line 938
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mShowing:Z

    if-eqz v1, :cond_0

    .line 939
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->update()V

    return-void

    .line 943
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mContext:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 944
    check-cast v1, Landroid/app/Activity;

    .line 945
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 947
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    .line 954
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 955
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 957
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 960
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mShowing:Z

    .line 962
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDuration:I

    if-eqz v0, :cond_4

    .line 963
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 964
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 967
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    if-eqz v0, :cond_5

    .line 968
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->init(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    .line 969
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDraggable:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->start()V

    .line 973
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-eqz v0, :cond_6

    .line 974
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowShow(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 981
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void

    .line 934
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "WindowParams and view cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x50

    .line 860
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->showAsDropDown(Landroid/view/View;I)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0, p1, p2, v0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6

    .line 876
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_8

    .line 883
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 882
    invoke-static {p2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    const/4 v0, 0x2

    .line 886
    new-array v0, v0, [I

    .line 887
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 889
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 890
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 892
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 893
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    aget v4, v0, v3

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 894
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    and-int/lit8 p3, p2, 0x3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_2

    .line 897
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    if-nez p3, :cond_0

    .line 899
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    :cond_0
    if-nez p3, :cond_1

    .line 902
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 903
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 902
    invoke-virtual {p3, p4, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 904
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    .line 906
    :cond_1
    iget-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, p3

    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    and-int/lit8 p3, p2, 0x5

    const/4 p4, 0x5

    if-ne p3, p4, :cond_3

    .line 908
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

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

    .line 912
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_4

    .line 914
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    :cond_4
    if-nez p1, :cond_5

    .line 917
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 918
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 917
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->measure(II)V

    .line 919
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 921
    :cond_5
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_6
    const/16 p3, 0x50

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_7

    .line 923
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 926
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->show()V

    return-void

    .line 877
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WindowParams and view cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update()V
    .locals 3

    const-string/jumbo v0, "window update, x: "

    .line 1030
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1034
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mDecorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->mOnWindowLifecycle:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;

    if-nez v0, :cond_1

    return-void

    .line 1040
    :cond_1
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;->onWindowUpdate(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1044
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
