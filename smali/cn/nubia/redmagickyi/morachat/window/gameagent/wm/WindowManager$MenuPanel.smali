.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuPanel"
.end annotation


# instance fields
.field private easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

.field private layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

.field private layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

.field private layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

.field private layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1225
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$1;)V
    .locals 0

    .line 1225
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V
    .locals 0

    .line 1225
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputButton(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V
    .locals 0

    .line 1225
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputList(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V
    .locals 0

    .line 1225
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputTextArea(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V
    .locals 0

    .line 1225
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hidePresetButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputButtonWhichCanExpandToTextArea()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->expand()V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->packup()V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 0

    .line 1225
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    return-object p0
.end method

.method static synthetic access$4500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)[I
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->getPanelSize()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isPresetButtonShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->createWindow()V

    return-void
.end method

.method static synthetic access$5000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputButtonShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputListShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputTextAreaShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showPresetButton()V

    return-void
.end method

.method static synthetic access$5600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;I)V
    .locals 0

    .line 1225
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->onIconAtLocation(I)V

    return-void
.end method

.method static synthetic access$5700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Z
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isExpanded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;
    .locals 0

    .line 1225
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    return-object p0
.end method

.method static synthetic access$6100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;
    .locals 0

    .line 1225
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    return-object p0
.end method

.method static synthetic access$6300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showOutputButton()V

    return-void
.end method

.method static synthetic access$6400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;
    .locals 0

    .line 1225
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    return-object p0
.end method

.method static synthetic access$6500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;
    .locals 0

    .line 1225
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    return-object p0
.end method

.method static synthetic access$6600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showOutputList()V

    return-void
.end method

.method static synthetic access$6700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showOutputTextArea()V

    return-void
.end method

.method private animInHorizontal(Landroid/view/View;Z)V
    .locals 3

    .line 1708
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1711
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1716
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1718
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1720
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1721
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Z)V

    .line 1722
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1723
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1724
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->setDuration(J)V

    .line 1725
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1726
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animInVertical(Landroid/view/View;Z)V
    .locals 3

    .line 1663
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1666
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1671
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1673
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1675
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1676
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Z)V

    .line 1677
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1678
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1679
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->setDuration(J)V

    .line 1680
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1681
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOutHorizontal(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1730
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1733
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1738
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1740
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1742
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1743
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Z)V

    .line 1744
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1745
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1746
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->setDuration(J)V

    .line 1747
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1748
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1749
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1688
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1693
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v0, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1695
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v0, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1697
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1698
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Z)V

    .line 1699
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1700
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1701
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->setDuration(J)V

    .line 1702
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1703
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1704
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createWindow()V
    .locals 3

    .line 1233
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, "MenuPanel"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->with(Landroid/app/Application;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    const/4 v1, 0x0

    .line 1234
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1235
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setGravity(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1236
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1237
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 1238
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    return-void
.end method

.method private expand()V
    .locals 2

    .line 1571
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1572
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1573
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 1574
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    :cond_0
    return-void
.end method

.method private getPanelSize()[I
    .locals 6

    .line 1848
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isPresetButtonShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getSize()[I

    move-result-object v0

    .line 1850
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1851
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1852
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr v4, p0

    goto :goto_1

    .line 1853
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getSize()[I

    move-result-object v0

    .line 1855
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1856
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1857
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1858
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputListShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1859
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getSize()[I

    move-result-object v0

    .line 1860
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1861
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1862
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1863
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputTextAreaShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1864
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getSize()[I

    move-result-object v0

    .line 1865
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1866
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1867
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    move-object v0, v1

    move v3, v2

    move v4, v3

    :goto_1
    const/4 p0, 0x1

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    .line 1869
    new-array v1, v1, [I

    aget v5, v0, v2

    aput v5, v1, v2

    aget v0, v0, p0

    aput v0, v1, p0

    :goto_2
    if-eqz v1, :cond_5

    .line 1871
    aget v0, v1, v2

    add-int/2addr v0, v3

    aput v0, v1, v2

    .line 1872
    aget v0, v1, p0

    add-int/2addr v0, v4

    aput v0, v1, p0

    return-object v1

    .line 1875
    :cond_5
    filled-new-array {v2, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 1262
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_menu:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1263
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method private hideOutputButton(Z)V
    .locals 2

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideOutputButton, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputButtonShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1412
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$7;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$7;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1413
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setTag(Ljava/lang/Object;)V

    .line 1414
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setVisibility(I)V

    .line 1434
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private hideOutputButtonWhichCanExpandToTextArea()V
    .locals 2

    .line 1393
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private hideOutputList(Z)V
    .locals 2

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideOutputList, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputListShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1452
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$8;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$8;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1453
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->setTag(Ljava/lang/Object;)V

    .line 1454
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->setVisibility(I)V

    .line 1474
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private hideOutputTextArea(Z)V
    .locals 2

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideOutputTextArea, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputTextAreaShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 1492
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1496
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->isShowVerticalOfIcon()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1497
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$9;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$9;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1515
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$10;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$10;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animOutHorizontal(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1493
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setTag(Ljava/lang/Object;)V

    .line 1494
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setVisibility(I)V

    .line 1534
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private hidePresetButton(Z)V
    .locals 2

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hidePresetButton, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isPresetButtonShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1350
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1354
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1351
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setTag(Ljava/lang/Object;)V

    .line 1352
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setVisibility(I)V

    .line 1372
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .line 1268
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_menu_ai_functions:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$1;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    const/16 v1, 0x8

    .line 1289
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setVisibility(I)V

    .line 1290
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_menu_output_buttons:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    .line 1304
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setVisibility(I)V

    .line 1305
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_menu_output_list:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$3;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->bindView(Landroid/content/Context;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    .line 1322
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->setVisibility(I)V

    .line 1323
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_menu_output_textarea:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$4;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V

    invoke-virtual {v0, v2, p1, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->bindView(Landroid/content/Context;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    .line 1332
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setVisibility(I)V

    return-void
.end method

.method private isExpanded()Z
    .locals 2

    .line 1599
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isPresetButtonShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputButtonShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputListShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputTextAreaShowing()Z

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

.method private isOutputButtonShowing()Z
    .locals 1

    .line 1559
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOutputListShowing()Z
    .locals 1

    .line 1563
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOutputTextAreaShowing()Z
    .locals 1

    .line 1567
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPresetButtonShowing()Z
    .locals 1

    .line 1555
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onIconAtLocation(I)V
    .locals 8

    .line 1753
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 1757
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_52_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    .line 1763
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_58_dp:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v4, v3

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_58_dp:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v4, v1

    move v1, v3

    .line 1770
    :goto_0
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1771
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1772
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1773
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v5, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setReverseLayout(Z)V

    .line 1775
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1776
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1777
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1778
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1779
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v5, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setReverseLayout(Z)V

    .line 1780
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1781
    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1782
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1783
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1784
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1785
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1786
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1787
    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1788
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne p1, v2, :cond_3

    .line 1791
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->isShowVerticalOfIcon()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1792
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    .line 1795
    :cond_3
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1796
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->isShowVerticalOfIcon()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_2
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1798
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    :cond_5
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 1801
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_52_dp:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_6

    .line 1806
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_58_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v5, v3

    goto :goto_4

    .line 1811
    :cond_6
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_58_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v5, v4

    move v4, v3

    .line 1813
    :goto_4
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1814
    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1815
    iput v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1816
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1817
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v6, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setReverseLayout(Z)V

    .line 1818
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1819
    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1820
    iput v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1821
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v6, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setReverseLayout(Z)V

    .line 1823
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1824
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1825
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1826
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1827
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1828
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1829
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1830
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1831
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne p1, v2, :cond_8

    .line 1834
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->isShowVerticalOfIcon()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_5
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1835
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_7

    .line 1838
    :cond_8
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1839
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->isShowVerticalOfIcon()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_6
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1841
    :goto_7
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_8
    return-void
.end method

.method private packup()V
    .locals 2

    .line 1579
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1580
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1581
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hidePresetButton(Z)V

    .line 1584
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1585
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputButton(Z)V

    .line 1587
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1588
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputList(Z)V

    .line 1590
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1591
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputTextArea(Z)V

    .line 1593
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-eqz p0, :cond_4

    const/16 v0, 0x10

    .line 1594
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    :cond_4
    return-void
.end method

.method private showOutputButton()V
    .locals 3

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showOutputButton, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputButtonShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1439
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hidePresetButton(Z)V

    .line 1440
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputList(Z)V

    .line 1441
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputTextArea(Z)V

    .line 1442
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setTag(Ljava/lang/Object;)V

    .line 1443
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1444
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animInVertical(Landroid/view/View;Z)V

    .line 1446
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->setVisibility(I)V

    .line 1447
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private showOutputList()V
    .locals 3

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showOutputList, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputListShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1479
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hidePresetButton(Z)V

    .line 1480
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputButton(Z)V

    .line 1481
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputTextArea(Z)V

    .line 1482
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->setTag(Ljava/lang/Object;)V

    .line 1483
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1484
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animInVertical(Landroid/view/View;Z)V

    .line 1486
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputList:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->setVisibility(I)V

    .line 1487
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private showOutputTextArea()V
    .locals 3

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showOutputTextArea, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isOutputTextAreaShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1539
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hidePresetButton(Z)V

    .line 1540
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputButton(Z)V

    .line 1541
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputList(Z)V

    .line 1542
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setTag(Ljava/lang/Object;)V

    .line 1543
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1544
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->isShowVerticalOfIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1545
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animInVertical(Landroid/view/View;Z)V

    goto :goto_0

    .line 1547
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animInHorizontal(Landroid/view/View;Z)V

    .line 1550
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutOutputTextArea:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setVisibility(I)V

    .line 1551
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private showPresetButton()V
    .locals 3

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showPresetButton, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->isPresetButtonShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$5400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$5400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;->isWindowOnlyTTSFromGameAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hidePresetButton(Z)V

    return-void

    .line 1381
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputButton(Z)V

    .line 1382
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputList(Z)V

    .line 1383
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputTextArea(Z)V

    .line 1384
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setTag(Ljava/lang/Object;)V

    .line 1385
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->animInVertical(Landroid/view/View;Z)V

    .line 1388
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->setVisibility(I)V

    .line 1389
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method


# virtual methods
.method public declared-synchronized hideMain()V
    .locals 1

    monitor-enter p0

    .line 1252
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->packup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 0

    .line 1256
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->recycle()V

    :cond_0
    return-void
.end method

.method public declared-synchronized showMain()V
    .locals 1

    monitor-enter p0

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->show()V

    .line 1245
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->expand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;Z)V
    .locals 2

    .line 1647
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$14;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$14;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;Z)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V
    .locals 2

    .line 1615
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$12;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V
    .locals 2

    .line 1631
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$13;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$13;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V
    .locals 2

    .line 1603
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$11;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$11;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateAccompanyState()V
    .locals 0

    .line 1343
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->layoutPresetButton:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    if-eqz p0, :cond_0

    .line 1344
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->update()V

    :cond_0
    return-void
.end method
