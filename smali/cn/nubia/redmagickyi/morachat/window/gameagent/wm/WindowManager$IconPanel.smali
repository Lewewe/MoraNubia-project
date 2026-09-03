.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconPanel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;
    }
.end annotation


# static fields
.field private static final ICON_AT_BOTTOM:I = 0x8

.field private static final ICON_AT_LEFT:I = 0x1

.field private static final ICON_AT_RIGHT:I = 0x2

.field private static final ICON_AT_TOP:I = 0x4


# instance fields
.field private easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

.field private gson:Lcom/google/gson/Gson;

.field private handler:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

.field private iconClickedRunnable:Ljava/lang/Runnable;

.field private iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

.field private largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;

.field private smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;

.field private surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

.field private surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

.field private surfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;

.field private surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

.field private unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

    .line 465
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->gson:Lcom/google/gson/Gson;

    .line 954
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$8;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$8;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->iconClickedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->createWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateIconMuteState()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateIconRingState()V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Z
    .locals 0

    .line 450
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;
    .locals 0

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;
    .locals 0

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 0

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateDefaultLocationPercent()V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;
    .locals 0

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;
    .locals 0

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

    return-object p0
.end method

.method static synthetic access$3900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;
    .locals 0

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    return-object p0
.end method

.method static synthetic access$4000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;
    .locals 0

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;

    return-object p0
.end method

.method static synthetic access$6200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->switchToLargeIcon()V

    return-void
.end method

.method private createLargeIconDragger()V
    .locals 2

    .line 577
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;

    .line 578
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;->setDraggingCallback(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;)V

    return-void
.end method

.method private createSmallIconDragger()V
    .locals 2

    .line 608
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;

    .line 609
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->setDraggingCallback(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;)V

    .line 619
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->setSpringBackAnimCallback(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;)V

    return-void
.end method

.method private createWindow()V
    .locals 3

    .line 632
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    .line 633
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->createLargeIconDragger()V

    .line 634
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->createSmallIconDragger()V

    .line 635
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, "IconPanel"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->with(Landroid/app/Application;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    const/4 v1, 0x0

    .line 636
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 637
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setGravity(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 638
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setOnWindowLifecycle(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 665
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$5;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    .line 671
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 672
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 674
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getDefaultLocation()[I

    move-result-object v0

    .line 675
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXOffset(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 676
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setYOffset(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    return-void
.end method

.method private getDefaultLocation()[I
    .locals 7

    .line 530
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v0

    .line 531
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowHeight()I

    move-result v1

    .line 532
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_LOCATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->gson:Lcom/google/gson/Gson;

    const-class v4, [F

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 537
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-le v0, v1, :cond_0

    .line 542
    new-array v2, v2, [F

    const v5, 0x3e6e147b    # 0.2325f

    aput v5, v2, v4

    const v5, 0x3d888889

    aput v5, v2, v3

    goto :goto_1

    .line 544
    :cond_0
    new-array v2, v2, [F

    const v5, 0x3daaaaab

    aput v5, v2, v4

    const v5, 0x3d28f5c3    # 0.04125f

    aput v5, v2, v3

    .line 548
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getIconWidth()I

    move-result p0

    .line 549
    aget v5, v2, v4

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 550
    aget v2, v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-gez v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    add-int v3, v5, p0

    if-le v3, v0, :cond_3

    sub-int v5, v0, p0

    :cond_3
    :goto_2
    if-gez v2, :cond_4

    goto :goto_3

    :cond_4
    add-int v0, v2, p0

    if-le v0, v1, :cond_5

    sub-int v4, v1, p0

    goto :goto_3

    :cond_5
    move v4, v2

    .line 561
    :goto_3
    filled-new-array {v5, v4}, [I

    move-result-object p0

    return-object p0
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 704
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_icon:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 705
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 710
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->surface_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    const/4 v1, 0x1

    .line 711
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setLargeIcon(Z)V

    .line 712
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->surface_forground:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    .line 713
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setOnViewClickedListener(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;)V

    .line 714
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setLargeIcon(Z)V

    .line 715
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateIconRingState()V

    .line 716
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateIconMuteState()V

    .line 718
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->surface_iconpreview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;

    .line 719
    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$6;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;->setListener(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview$Listener;)V

    .line 725
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->surface_unity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x0

    .line 726
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setShouldLockFramerate(Z)V

    .line 727
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;

    invoke-direct {p1, v0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconPreview;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    .line 728
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->setLargeIcon(Z)V

    .line 729
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setAlpha(F)V

    .line 730
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$SceneReadyCallback;)V

    .line 804
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V

    return-void
.end method

.method private isLargeIcon()Z
    .locals 1

    .line 1026
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onIconAtLeft()V
    .locals 0

    return-void
.end method

.method private onIconAtRight()V
    .locals 0

    return-void
.end method

.method private setKeepScreenOn(Z)V
    .locals 0

    .line 983
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 984
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method private setWindowXYOffset(II)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 902
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateDefaultLocationPercent()V

    return-void
.end method

.method private switchToLargeIcon()V
    .locals 3

    .line 964
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->iconLargeSmallSwitcher:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$9;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$9;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->switchToLargeIcon(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z

    return-void
.end method

.method private updateDefaultLocationPercent()V
    .locals 4

    .line 566
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 567
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 568
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v2

    .line 569
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowHeight()I

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

    .line 571
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 572
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_LOCATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private updateIconMuteState()V
    .locals 0

    return-void
.end method

.method private updateIconRingState()V
    .locals 2

    .line 808
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->isIdel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->None:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    .line 811
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->None:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    if-eqz v0, :cond_3

    .line 814
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    if-ne v0, v1, :cond_1

    .line 815
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Beating:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    .line 816
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Beating:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    goto :goto_0

    .line 817
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->STATE_ANALYING:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    if-ne v0, v1, :cond_2

    .line 818
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    .line 819
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    goto :goto_0

    .line 821
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->None:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    .line 822
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->None:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateKeepScreenOnState()V
    .locals 2

    .line 833
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 835
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 837
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->isIdel()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 838
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 840
    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setKeepScreenOn(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeUnitySkin()V
    .locals 0

    .line 1014
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->changeUnitySkin()V

    :cond_0
    return-void
.end method

.method public getIconHeight()I
    .locals 1

    .line 879
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getLargeIconHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getSmallIconHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIconWidth()I
    .locals 1

    .line 875
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLargeIconHeight()I
    .locals 1

    .line 852
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_large_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getLargeIconWidth()I
    .locals 1

    .line 847
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_large_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getSmallIconHeight()I
    .locals 1

    .line 862
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_small_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getSmallIconWidth()I
    .locals 1

    .line 857
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_small_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getWindowHeight()I
    .locals 0

    .line 871
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowHeight()I

    move-result p0

    return p0
.end method

.method public getWindowWidth()I
    .locals 0

    .line 867
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowWidth()I

    move-result p0

    return p0
.end method

.method public declared-synchronized hideMain()V
    .locals 1

    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->hideMain()V

    .line 690
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideMain()V

    .line 691
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->cancel()V

    .line 694
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isIconAtBottom()Z
    .locals 5

    .line 893
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowHeight()I

    move-result v0

    .line 894
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 895
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$4500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getIconHeight()I

    move-result v4

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$4600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)[I

    move-result-object p0

    aget p0, p0, v3

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v1, p0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public isIconAtRight()Z
    .locals 2

    .line 884
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getIconWidth()I

    move-result v0

    .line 885
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v1

    .line 886
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

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

.method public onIconClicked()V
    .locals 3

    .line 921
    const-string v0, "Window-WindowManager"

    const-string v1, "onIconClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 923
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$4700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    goto :goto_0

    .line 926
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$4800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$4900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    .line 930
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$4800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->hideInput(Z)V

    .line 933
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$4900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->hideCaption(Z)V

    .line 936
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 937
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 939
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 940
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 942
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 943
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 945
    :cond_6
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->iconClickedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 947
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->iconClickedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 950
    :cond_7
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->switchToLargeIcon()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onSwitchToLargeIcon(Z)V
    .locals 4

    .line 1031
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$10;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$10;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    .line 1037
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->largeIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/MovingDraggable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1038
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1039
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1040
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getLargeIconHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1041
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1045
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto :goto_0

    .line 1047
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowWidth()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    .line 1050
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setLargeIcon(Z)V

    .line 1051
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setLargeIcon(Z)V

    .line 1052
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->setLargeIcon(Z)V

    return-void
.end method

.method public onSwitchToSmallIcon(Z)V
    .locals 4

    .line 1057
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$11;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$11;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    .line 1063
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->smallIconDragger:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1064
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1065
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getSmallIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1066
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getSmallIconHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1067
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getLargeIconWidth()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1071
    invoke-direct {p0, v2, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto :goto_0

    .line 1073
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowWidth()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    .line 1076
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceBackground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setLargeIcon(Z)V

    .line 1077
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->surfaceForground:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setLargeIcon(Z)V

    .line 1078
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->setLargeIcon(Z)V

    .line 1080
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 1081
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 1082
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 1083
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->handler:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;->access$3400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 698
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->recycle()V

    :cond_0
    return-void
.end method

.method public setUnityMute()V
    .locals 0

    .line 989
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->mute()V

    :cond_0
    return-void
.end method

.method public setUnityUnmute()V
    .locals 0

    .line 995
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->unmute()V

    :cond_0
    return-void
.end method

.method public declared-synchronized showMain()V
    .locals 1

    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->showMain()V

    .line 681
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMain()V

    .line 682
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->show()V

    .line 685
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateKeepScreenOnState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUnitySpeaking(IZ)V
    .locals 0

    .line 1001
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 1002
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->startSpeaking(IZ)V

    :cond_0
    return-void
.end method

.method public stopUnitySpeaking()V
    .locals 0

    .line 1007
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    if-eqz p0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->stopSpeaking()V

    :cond_0
    return-void
.end method

.method public updateLocation()V
    .locals 11

    const/4 v0, 0x2

    .line 1088
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1089
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getIconWidth()I

    move-result v3

    .line 1090
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getIconHeight()I

    move-result v4

    .line 1091
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v5

    .line 1092
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->getWindowHeight()I

    move-result v6

    .line 1094
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$4600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)[I

    move-result-object v7

    .line 1095
    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v8}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$4500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)[I

    move-result-object v8

    .line 1096
    aget v9, v8, v1

    if-lez v9, :cond_0

    .line 1098
    aget v10, v7, v1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v0, v1

    .line 1099
    aget v9, v7, v2

    aget v10, v8, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v7

    .line 1103
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v9

    .line 1104
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v10

    if-eqz v9, :cond_e

    if-eqz v10, :cond_7

    .line 1108
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->onIconAtRight()V

    .line 1109
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v5

    const/16 v9, 0xa

    invoke-static {v5, v9}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;I)V

    .line 1110
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v5

    invoke-static {v5, v9}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;I)V

    .line 1111
    aget v5, v0, v1

    if-lez v5, :cond_14

    .line 1112
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v5, v3

    aget v9, v0, v1

    sub-int/2addr v5, v9

    sub-int/2addr v6, v4

    .line 1113
    iget-object v9, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v9}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gez v5, :cond_4

    .line 1116
    aget v5, v7, v1

    aget v9, v8, v1

    if-le v5, v9, :cond_1

    .line 1117
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1118
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v5

    aget v7, v7, v1

    aget v9, v8, v1

    sub-int/2addr v7, v9

    aget v2, v8, v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v5, v7, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto :goto_1

    :cond_1
    if-ge v5, v9, :cond_2

    .line 1120
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v5

    aget v9, v8, v1

    aget v7, v7, v1

    sub-int/2addr v9, v7

    invoke-virtual {v5, v9, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1121
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v5

    aget v2, v8, v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v5, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto :goto_1

    .line 1123
    :cond_2
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1124
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v5

    aget v2, v8, v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v5, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1126
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1127
    :cond_3
    aget v0, v0, v1

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto/16 :goto_3

    .line 1130
    :cond_4
    aget v0, v7, v1

    aget v3, v8, v1

    if-le v0, v3, :cond_5

    .line 1131
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1132
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    aget v0, v7, v1

    aget v3, v8, v1

    sub-int/2addr v0, v3

    add-int/2addr v5, v0

    aget v0, v8, v2

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0, v5, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto/16 :goto_3

    :cond_5
    if-ge v0, v3, :cond_6

    .line 1134
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    aget v3, v8, v1

    aget v7, v7, v1

    sub-int/2addr v3, v7

    add-int/2addr v3, v5

    invoke-virtual {v0, v3, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1135
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    aget v0, v8, v2

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0, v5, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto/16 :goto_3

    .line 1137
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1138
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    aget v0, v8, v2

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0, v5, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto/16 :goto_3

    .line 1144
    :cond_7
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->onIconAtRight()V

    .line 1145
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v2, v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;I)V

    .line 1146
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2, v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;I)V

    .line 1147
    aget v2, v0, v1

    if-lez v2, :cond_14

    .line 1148
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v3

    aget v5, v0, v1

    sub-int/2addr v2, v5

    sub-int/2addr v6, v4

    .line 1149
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gez v2, :cond_b

    .line 1152
    aget v2, v7, v1

    aget v5, v8, v1

    if-le v2, v5, :cond_8

    .line 1153
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1154
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    aget v5, v7, v1

    aget v6, v8, v1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto :goto_2

    :cond_8
    if-ge v2, v5, :cond_9

    .line 1156
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    aget v5, v8, v1

    aget v6, v7, v1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1157
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto :goto_2

    .line 1159
    :cond_9
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1160
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1162
    :goto_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1163
    :cond_a
    aget v0, v0, v1

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto/16 :goto_3

    .line 1166
    :cond_b
    aget v0, v7, v1

    aget v3, v8, v1

    if-le v0, v3, :cond_c

    .line 1167
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1168
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    aget v0, v7, v1

    aget v1, v8, v1

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto/16 :goto_3

    :cond_c
    if-ge v0, v3, :cond_d

    .line 1170
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    aget v3, v8, v1

    aget v1, v7, v1

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    invoke-virtual {v0, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1171
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto/16 :goto_3

    .line 1173
    :cond_d
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1174
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto/16 :goto_3

    :cond_e
    if-eqz v10, :cond_11

    .line 1182
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->onIconAtLeft()V

    .line 1183
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v3

    const/16 v7, 0x9

    invoke-static {v3, v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;I)V

    .line 1184
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v3

    invoke-static {v3, v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;I)V

    .line 1185
    aget v3, v0, v1

    if-lez v3, :cond_14

    .line 1186
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v7, v0, v1

    add-int/2addr v3, v7

    sub-int/2addr v6, v4

    .line 1187
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-le v3, v5, :cond_10

    .line 1190
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v3

    aget v7, v0, v1

    sub-int v7, v5, v7

    invoke-virtual {v3, v7, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1191
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v3

    aget v7, v0, v1

    sub-int v7, v5, v7

    aget v2, v8, v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v3, v7, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1192
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1193
    :cond_f
    aget v0, v0, v1

    sub-int/2addr v5, v0

    invoke-direct {p0, v5, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto/16 :goto_3

    .line 1196
    :cond_10
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v3, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1197
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v2, v8, v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v6, v1

    invoke-virtual {v0, p0, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    goto/16 :goto_3

    .line 1202
    :cond_11
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->onIconAtLeft()V

    .line 1203
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;I)V

    .line 1204
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;I)V

    .line 1205
    aget v2, v0, v1

    if-lez v2, :cond_14

    .line 1206
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v3, v0, v1

    add-int/2addr v2, v3

    sub-int/2addr v6, v4

    .line 1207
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-le v2, v5, :cond_13

    .line 1210
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    aget v4, v0, v1

    sub-int v4, v5, v4

    invoke-virtual {v2, v4, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1211
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v2

    aget v4, v0, v1

    sub-int v4, v5, v4

    invoke-virtual {v2, v4, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1212
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$5700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$5800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1213
    :cond_12
    aget v0, v0, v1

    sub-int/2addr v5, v0

    invoke-direct {p0, v5, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->setWindowXYOffset(II)V

    goto :goto_3

    .line 1216
    :cond_13
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1217
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, p0, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    :cond_14
    :goto_3
    return-void
.end method
