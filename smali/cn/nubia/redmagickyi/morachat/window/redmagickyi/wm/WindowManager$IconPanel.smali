.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconPanel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;
    }
.end annotation


# instance fields
.field private easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

.field private gson:Lcom/google/gson/Gson;

.field private handler:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

.field private iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

.field private largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;

.field private smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

.field private surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

.field private surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

.field private surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

.field private unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

    .line 243
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->gson:Lcom/google/gson/Gson;

    .line 246
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->createWindow()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateDefaultLocationPercent()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V

    return-void
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->onIconAtRight()V

    return-void
.end method

.method static synthetic access$3500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;II)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->onIconAtLeft()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateIconMuteState()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateIconRingRollingState()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Z
    .locals 0

    .line 233
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result p0

    return p0
.end method

.method private createLargeIconDragger()V
    .locals 2

    .line 342
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;

    .line 343
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->setDraggingCallback(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable$DraggingCallback;)V

    return-void
.end method

.method private createSmallIconDragger()V
    .locals 2

    .line 373
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

    .line 374
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;->setDraggingCallback(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable$DraggingCallback;)V

    .line 384
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;->setSpringBackAnimCallback(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;)V

    return-void
.end method

.method private createWindow()V
    .locals 3

    .line 397
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

    .line 398
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->createLargeIconDragger()V

    .line 399
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->createSmallIconDragger()V

    .line 400
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->with(Landroid/app/Application;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    const/4 v1, 0x0

    .line 401
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 402
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setGravity(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 403
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$4;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setOnWindowLifecycle(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow$OnWindowLifecycle;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 428
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 429
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 431
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getDefaultLocation()[I

    move-result-object v0

    .line 432
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXOffset(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 433
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setYOffset(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    return-void
.end method

.method private getDefaultLocation()[I
    .locals 7

    .line 300
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_LOCATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->gson:Lcom/google/gson/Gson;

    const-class v2, [F

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 308
    new-array v0, v0, [F

    const v3, 0x3e0b4396    # 0.136f

    aput v3, v0, v2

    const v3, 0x3e85a1cb    # 0.261f

    aput v3, v0, v1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getIconWidth()I

    move-result v3

    .line 312
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v4

    .line 313
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getWindowHeight()I

    move-result p0

    .line 314
    aget v5, v0, v2

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 315
    aget v0, v0, v1

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gez v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    add-int v1, v5, v3

    if-le v1, v4, :cond_2

    sub-int v5, v4, v3

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    add-int v1, v0, v3

    if-le v1, p0, :cond_4

    sub-int v2, p0, v3

    goto :goto_2

    :cond_4
    move v2, v0

    .line 326
    :goto_2
    filled-new-array {v5, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 459
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_window_icon:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 460
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 465
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->surface_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    .line 466
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->surface_forground:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    .line 467
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setOnViewClickedListener(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;)V

    .line 468
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->setLargeIcon(Z)V

    .line 469
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setLargeIcon(Z)V

    .line 470
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateIconRingRollingState()V

    .line 471
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateIconMuteState()V

    .line 473
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->surface_unity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setShouldLockFramerate(Z)V

    .line 475
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-direct {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    .line 476
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setAlpha(F)V

    .line 477
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;)V

    .line 550
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V

    return-void
.end method

.method private isLargeIcon()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onIconAtLeft()V
    .locals 1

    .line 728
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setOperatorLocation(I)V

    return-void
.end method

.method private onIconAtRight()V
    .locals 1

    .line 724
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setOperatorLocation(I)V

    return-void
.end method

.method private setKeepScreenOn(Z)V
    .locals 0

    .line 687
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 688
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method private setWindowXYOffset(II)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 623
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateDefaultLocationPercent()V

    return-void
.end method

.method private updateDefaultLocationPercent()V
    .locals 4

    .line 331
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 332
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 333
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v2

    .line 334
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getWindowHeight()I

    move-result v3

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    const/4 v2, 0x2

    .line 336
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 337
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_LOCATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private updateIconMuteState()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    if-eqz v0, :cond_1

    .line 569
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setMute(Z)V

    :cond_1
    return-void
.end method

.method private updateIconRingRollingState()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    if-eqz v0, :cond_1

    .line 555
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    if-ne v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->setRingRolling(Z)V

    .line 557
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setRingRolling(Z)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    if-ne v0, v1, :cond_1

    .line 559
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->setRingRolling(Z)V

    .line 560
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setRingRolling(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateKeepScreenOnState()V
    .locals 3

    .line 574
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 579
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 580
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    if-ne v0, v2, :cond_2

    .line 581
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setKeepScreenOn(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public changeUnitySkin()V
    .locals 0

    .line 718
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->changeUnitySkin()V

    :cond_0
    return-void
.end method

.method public getIconWidth()I
    .locals 1

    .line 608
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLargeIconWidth()I
    .locals 1

    .line 590
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_window_icon_size_large:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getSmallIconWidth()I
    .locals 1

    .line 595
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_window_icon_size_small:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getWindowHeight()I
    .locals 0

    .line 604
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->getWindowHeight()I

    move-result p0

    return p0
.end method

.method public getWindowWidth()I
    .locals 0

    .line 600
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->getWindowWidth()I

    move-result p0

    return p0
.end method

.method public declared-synchronized hideMain()V
    .locals 1

    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->hideMain()V

    .line 446
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->cancel()V

    .line 449
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isIconAtRight()Z
    .locals 2

    .line 613
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getIconWidth()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v1

    .line 615
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    if-gt v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCancelClicked()V
    .locals 2

    .line 642
    const-string v0, "Window-WindowManager"

    const-string v1, "onCancelClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;->onCancelClicked()V

    return-void
.end method

.method public onIconClicked()V
    .locals 3

    .line 663
    const-string v0, "Window-WindowManager"

    const-string v1, "onIconClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    goto :goto_0

    .line 668
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    goto :goto_0

    .line 671
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$6;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;->switchToLargeIcon(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z

    :goto_0
    return-void
.end method

.method public onMuteClicked()V
    .locals 3

    .line 648
    const-string v0, "Window-WindowManager"

    const-string v1, "onMuteClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 652
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    goto :goto_0

    .line 656
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 657
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;->access$1900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;->access$1700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 453
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->recycle()V

    :cond_0
    return-void
.end method

.method public setUnityMute()V
    .locals 0

    .line 693
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mute()V

    :cond_0
    return-void
.end method

.method public setUnityUnmute()V
    .locals 0

    .line 699
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->unmute()V

    :cond_0
    return-void
.end method

.method public declared-synchronized showMain()V
    .locals 1

    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->showMain()V

    .line 438
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->show()V

    .line 441
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUnitySpeaking(IZ)V
    .locals 0

    .line 705
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 706
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->startSpeaking(IZ)V

    :cond_0
    return-void
.end method

.method public stopUnitySpeaking()V
    .locals 0

    .line 711
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->stopSpeaking()V

    :cond_0
    return-void
.end method

.method public switchToLargeIcon(Z)V
    .locals 4

    .line 737
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 738
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 740
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 741
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->getWindowHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 745
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->getWindowWidth()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    .line 750
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->setLargeIcon(Z)V

    .line 751
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setLargeIcon(Z)V

    .line 752
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setOperatorLocation(I)V

    .line 753
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isModelReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 754
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public switchToSmallIcon(Z)V
    .locals 4

    .line 760
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 761
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 762
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 763
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 764
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->getWindowHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 768
    invoke-direct {p0, v2, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto :goto_0

    .line 770
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->getWindowWidth()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    .line 773
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->setLargeIcon(Z)V

    .line 774
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setLargeIcon(Z)V

    .line 775
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setOperatorLocation(I)V

    .line 776
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setAlpha(F)V

    return-void
.end method
