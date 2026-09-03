.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptionPanel"
.end annotation


# instance fields
.field private easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

.field private ivCaption:Landroid/widget/ImageView;

.field private ivCaptionIcon:Landroid/widget/ImageView;

.field private layoutCaption:Landroid/widget/FrameLayout;

.field private layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

.field private tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

.field private tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V
    .locals 0

    .line 1395
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Z
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionTextShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Z
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionMenuShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->showCaption()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->expand()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->createWindow()V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;
    .locals 0

    .line 1395
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 0

    .line 1395
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-object p0
.end method

.method static synthetic access$3600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->packup()V

    return-void
.end method

.method static synthetic access$5100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)[I
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->getPanelSize()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;I)V
    .locals 0

    .line 1395
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->onIconAtLocation(I)V

    return-void
.end method

.method static synthetic access$5800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Z
    .locals 0

    .line 1395
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isExpanded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1395
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private animIn(Landroid/view/View;Z)V
    .locals 3

    .line 1595
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1598
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1603
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1605
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1607
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1608
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1609
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1610
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1611
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setDuration(J)V

    .line 1612
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1613
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOut(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1617
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1620
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1625
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1627
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1629
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1630
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1631
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1632
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1633
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setDuration(J)V

    .line 1634
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1635
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1636
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createWindow()V
    .locals 3

    .line 1405
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, "CaptionPanel"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->with(Landroid/app/Application;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/4 v1, 0x0

    .line 1406
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1407
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setGravity(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1408
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1409
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1410
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1411
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/EmptyDraggable;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/EmptyDraggable;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-void
.end method

.method private expand()V
    .locals 2

    .line 1572
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1573
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1574
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 1575
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    :cond_0
    return-void
.end method

.method private getPanelSize()[I
    .locals 3

    .line 1711
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionTextShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1715
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0

    .line 1712
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1713
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->getIconHeight()I

    move-result p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 1435
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_aiassistant_window_caption:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1436
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 1441
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_operator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    .line 1442
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    .line 1443
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1444
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_caption_talk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    .line 1445
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaption:Landroid/widget/ImageView;

    .line 1446
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    .line 1447
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setOnScrollStateChangedListener(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView$OnScrollStateChangedListener;)V

    .line 1463
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_ai_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    return-void
.end method

.method private isCaptionMenuShowing()Z
    .locals 3

    .line 1556
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "menu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isCaptionTextShowing()Z
    .locals 3

    .line 1564
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isExpanded()Z
    .locals 2

    .line 1591
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionTextShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onIconAtLocation(I)V
    .locals 6

    .line 1640
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f2aaaab

    :goto_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 1642
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->setIconState(ZZ)V

    .line 1643
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->updateCaptionSize()V

    .line 1644
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1645
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_43_dp:I

    goto :goto_1

    :cond_1
    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_41_dp:I

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1646
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1647
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1648
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1649
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1650
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_40_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1651
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1652
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaption:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_bg_floatingwindow_gameagent_talk:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1653
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 1654
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1655
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1656
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1657
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1658
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x13

    .line 1659
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1660
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1661
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1662
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1663
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1664
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1665
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1666
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setGravity(I)V

    .line 1667
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1668
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1669
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1670
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1671
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1672
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1673
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->setGravity(I)V

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_4

    .line 1675
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v5

    invoke-virtual {p1, v1, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->setIconState(ZZ)V

    .line 1676
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->updateCaptionSize()V

    .line 1677
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1678
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1679
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_43_dp:I

    goto :goto_2

    :cond_3
    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_41_dp:I

    :goto_2
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1680
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1681
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1682
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1683
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_40_dp:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1684
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1685
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaption:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_bg_floatingwindow_gameagent_talk_mirror:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 1687
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1688
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1689
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1690
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1691
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x15

    .line 1692
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1693
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1694
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1695
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1696
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1697
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1698
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1699
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setGravity(I)V

    .line 1700
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1701
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1702
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1703
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1704
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1705
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->setGravity(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private packup()V
    .locals 2

    .line 1580
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1581
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1582
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1583
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->hideCaption(Z)V

    .line 1585
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_1

    const/16 v0, 0x10

    .line 1586
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    :cond_1
    return-void
.end method

.method private showCaption()V
    .locals 4

    .line 1467
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showCaption, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionMenuShowing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionTextShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->isScrolling()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1469
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1471
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1472
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionTextShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    .line 1474
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->hideInput(Z)V

    if-eqz v0, :cond_3

    .line 1475
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1477
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;Z)V

    .line 1480
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1481
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->animIn(Landroid/view/View;Z)V

    .line 1483
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1484
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private updateCaptionSize()V
    .locals 5

    .line 1510
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon(Z)V

    .line 1511
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->isLargeIcon(Z)V

    .line 1512
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1513
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 1514
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getViewWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->getViewWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1515
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_75_dp:I

    goto :goto_0

    :cond_0
    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_50_dp:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v4

    int-to-float v1, v1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v1, v4

    :goto_1
    add-float/2addr v2, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 1516
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_2

    .line 1517
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1518
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public hideCaption(Z)V
    .locals 3

    .line 1523
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideCaption, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionMenuShowing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionTextShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1525
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1527
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionMenuShowing()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->isCaptionTextShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1528
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 1530
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 1534
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->animOut(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_3

    .line 1531
    :cond_5
    :goto_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1532
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1552
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method public declared-synchronized hideMain()V
    .locals 1

    monitor-enter p0

    .line 1425
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->packup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 0

    .line 1429
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->recycle()V

    :cond_0
    return-void
.end method

.method public declared-synchronized showMain()V
    .locals 1

    monitor-enter p0

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->show()V

    .line 1418
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->expand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showMenuCaption(Ljava/lang/String;JZ)V
    .locals 2

    .line 1488
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon(Z)V

    .line 1489
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->setVisibility(I)V

    .line 1490
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    const-string v1, "menu"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setTag(Ljava/lang/Object;)V

    .line 1491
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->isLargeIcon(Z)V

    .line 1492
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setText(Ljava/lang/String;JZ)V

    .line 1493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->updateCaptionSize()V

    .line 1494
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method public showTextCaption(Ljava/lang/String;JZ)V
    .locals 2

    .line 1498
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon(Z)V

    .line 1499
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_gameagent_window_ai_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1500
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->setText(Ljava/lang/String;JZ)V

    .line 1501
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->setVisibility(I)V

    .line 1502
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setTag(Ljava/lang/Object;)V

    .line 1503
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->isLargeIcon(Z)V

    .line 1504
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->setText(Ljava/lang/String;JZ)V

    .line 1505
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->updateCaptionSize()V

    .line 1506
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method
