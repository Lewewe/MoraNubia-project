.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;
.super Ljava/lang/Object;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundPanel"
.end annotation


# instance fields
.field private ivBg:Landroid/widget/ImageView;

.field private surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

.field private unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 452
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$1;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Landroid/widget/ImageView;
    .locals 0

    .line 452
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->ivBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;Z)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->onOrientationChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;
    .locals 0

    .line 452
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;
    .locals 0

    .line 452
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;
    .locals 0

    .line 452
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    move-result-object p0

    return-object p0
.end method

.method private init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;
    .locals 4

    .line 458
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_bg:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->ivBg:Landroid/widget/ImageView;

    .line 459
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    .line 460
    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;)V

    return-object p0
.end method

.method private onOrientationChanged(Z)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 584
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    neg-float p1, v0

    const/high16 v1, 0x42500000    # 52.0f

    goto :goto_0

    :cond_0
    neg-float p1, v0

    const/high16 v1, 0x427c0000    # 63.0f

    goto :goto_0

    :cond_1
    neg-float p1, v0

    const/high16 v1, 0x41d80000    # 27.0f

    :goto_0
    mul-float/2addr p1, v1

    .line 593
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->surfaceUnity:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public hideModel()V
    .locals 0

    .line 556
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->hide()V

    :cond_0
    return-void
.end method

.method public isModelShowing()Z
    .locals 0

    .line 562
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 0

    .line 544
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->release()V

    :cond_0
    return-void
.end method

.method public showModel()V
    .locals 0

    .line 550
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->show()V

    :cond_0
    return-void
.end method

.method public startSpeaking(I)V
    .locals 0

    .line 569
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 570
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->startSpeaking(I)V

    :cond_0
    return-void
.end method

.method public stopSpeaking()V
    .locals 0

    .line 575
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->stopSpeaking()V

    :cond_0
    return-void
.end method
