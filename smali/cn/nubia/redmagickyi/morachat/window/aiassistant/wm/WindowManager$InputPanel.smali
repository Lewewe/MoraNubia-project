.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputPanel"
.end annotation


# instance fields
.field private easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

.field private ivInput:Landroid/widget/FrameLayout;

.field private layoutInput:Landroid/widget/FrameLayout;

.field private layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

.field private tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;


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

    .line 1720
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V
    .locals 0

    .line 1720
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->showInput()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Z
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->isInputShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->expand()V

    return-void
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 0

    .line 1720
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-object p0
.end method

.method static synthetic access$3700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->packup()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->createWindow()V

    return-void
.end method

.method static synthetic access$5200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)[I
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->getPanelSize()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;I)V
    .locals 0

    .line 1720
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->onIconAtLocation(I)V

    return-void
.end method

.method static synthetic access$5900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Z
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->isExpanded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1720
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private animInHorizontal(Landroid/view/View;Z)V
    .locals 3

    .line 1955
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1958
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

    .line 1963
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1965
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1967
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1968
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1969
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1970
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1971
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setDuration(J)V

    .line 1972
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1973
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animInVertical(Landroid/view/View;Z)V
    .locals 3

    .line 1910
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1913
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

    .line 1918
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1920
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1922
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1923
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1924
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1925
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1926
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setDuration(J)V

    .line 1927
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1928
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOutHorizontal(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1977
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1980
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

    .line 1985
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1987
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1989
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1990
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1991
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1992
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1993
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setDuration(J)V

    .line 1994
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1995
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1996
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1932
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1935
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

    .line 1940
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v0, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1942
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v0, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1944
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1945
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1946
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1947
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1948
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setDuration(J)V

    .line 1949
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1950
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1951
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createWindow()V
    .locals 3

    .line 1727
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, "InputPanel"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->with(Landroid/app/Application;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/4 v1, 0x0

    .line 1728
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1729
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setGravity(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1730
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1731
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1732
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1733
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/EmptyDraggable;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/EmptyDraggable;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-void
.end method

.method private expand()V
    .locals 2

    .line 1887
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1888
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1889
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 1890
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    :cond_0
    return-void
.end method

.method private getPanelSize()[I
    .locals 4

    .line 2081
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->isInputShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2082
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2083
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2084
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2085
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2086
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v2, p0

    .line 2087
    filled-new-array {v1, v2}, [I

    move-result-object p0

    return-object p0

    .line 2089
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->getIconHeight()I

    move-result p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 2092
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 1757
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_aiassistant_window_input:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1758
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 1763
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_operator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    .line 1764
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    .line 1765
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1766
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    .line 1767
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    .line 1768
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->setCallback(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView$Callback;)V

    return-void
.end method

.method private isExpanded()Z
    .locals 2

    .line 1906
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->isInputShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInputShowing()Z
    .locals 1

    .line 1883
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

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

.method private onIconAtLocation(I)V
    .locals 10

    .line 2000
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f2aaaab

    .line 2001
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->setIconState(ZZ)V

    .line 2002
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    .line 2004
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$5000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)[I

    move-result-object v0

    .line 2005
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2006
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$5000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)[I

    move-result-object v7

    aget v7, v7, v6

    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$5100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)[I

    move-result-object v8

    aget v8, v8, v6

    iget-object v9, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v9}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object v9

    invoke-direct {v9}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->getPanelSize()[I

    move-result-object v9

    aget v9, v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2007
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    invoke-virtual {v7, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2008
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    invoke-virtual {v1, v6}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->setEnableClipPath(Z)V

    .line 2009
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->updateInputSize()V

    .line 2010
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    and-int/lit8 v7, p1, 0x1

    if-ne v7, v5, :cond_1

    .line 2012
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2013
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    and-int/lit8 v7, p1, 0x2

    if-ne v7, v4, :cond_2

    .line 2015
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2016
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    :goto_1
    and-int/lit8 v4, p1, 0x4

    if-ne v4, v3, :cond_3

    .line 2019
    aget p1, v0, v5

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2020
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_3
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 2022
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2023
    aget p1, v0, v5

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_4
    :goto_2
    const/16 p1, 0x31

    .line 2025
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2026
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2027
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2028
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_36_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2029
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2030
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2031
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2032
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->morachat_gameagent_window_input_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2033
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2034
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2035
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2036
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2037
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 2039
    :cond_5
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    .line 2040
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2041
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    invoke-virtual {v7, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2042
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutPanel:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;

    invoke-virtual {v1, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OperatorPanel;->setEnableClipPath(Z)V

    .line 2043
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->updateInputSize()V

    .line 2044
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    and-int/lit8 v7, p1, 0x1

    if-ne v7, v5, :cond_7

    .line 2046
    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v9}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget v9, Lcn/nubia/redmagickyi/main/R$dimen;->ns_43_dp:I

    goto :goto_3

    :cond_6
    sget v9, Lcn/nubia/redmagickyi/main/R$dimen;->ns_41_dp:I

    :goto_3
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2047
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    :cond_7
    and-int/lit8 v8, p1, 0x2

    if-ne v8, v4, :cond_9

    .line 2049
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2050
    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v9}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget v9, Lcn/nubia/redmagickyi/main/R$dimen;->ns_43_dp:I

    goto :goto_4

    :cond_8
    sget v9, Lcn/nubia/redmagickyi/main/R$dimen;->ns_41_dp:I

    :goto_4
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_9
    :goto_5
    and-int/lit8 v8, p1, 0x4

    if-ne v8, v3, :cond_a

    .line 2053
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2054
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_a
    and-int/lit8 v3, p1, 0x8

    if-ne v3, v2, :cond_b

    .line 2056
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2057
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_b
    :goto_6
    const/4 v2, 0x3

    .line 2059
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2060
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2061
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2062
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_36_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v5, :cond_c

    .line 2064
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2065
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_7

    :cond_c
    and-int/2addr p1, v4

    if-ne p1, v4, :cond_d

    .line 2067
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2068
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2070
    :cond_d
    :goto_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2071
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->ivInput:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->morachat_gameagent_window_input_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2072
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2073
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2074
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2075
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2076
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    return-void
.end method

.method private packup()V
    .locals 2

    .line 1895
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1896
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1897
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1898
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->hideInput(Z)V

    .line 1900
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_1

    const/16 v0, 0x10

    .line 1901
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    :cond_1
    return-void
.end method

.method private showInput()V
    .locals 3

    .line 1782
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showInput, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->isInputShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isScrolling()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1786
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1787
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->hideCaption(Z)V

    .line 1790
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1791
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1793
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->animInVertical(Landroid/view/View;Z)V

    goto :goto_0

    .line 1796
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->animInHorizontal(Landroid/view/View;Z)V

    .line 1799
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1800
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private updateInputSize()V
    .locals 5

    .line 1811
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isLargeIcon(Z)V

    .line 1812
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1814
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_0

    .line 1817
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    :goto_0
    double-to-int v1, v3

    .line 1819
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v4

    int-to-float v1, v1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    :goto_1
    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 1821
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_2

    .line 1822
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1823
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public hideInput(Z)V
    .locals 3

    .line 1828
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideInput, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->isInputShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1832
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->isInputShowing()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 1833
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_4

    .line 1835
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1839
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1841
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1860
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->animOutHorizontal(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1836
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1837
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->layoutInput:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1879
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method public declared-synchronized hideMain()V
    .locals 1

    monitor-enter p0

    .line 1747
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->packup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 0

    .line 1751
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->recycle()V

    :cond_0
    return-void
.end method

.method public showInput(Ljava/lang/String;)V
    .locals 2

    .line 1804
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isLargeIcon(Z)V

    .line 1805
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->tvInput:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->setText(Ljava/lang/String;)V

    .line 1806
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->updateInputSize()V

    .line 1807
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method public declared-synchronized showMain()V
    .locals 1

    monitor-enter p0

    .line 1737
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 1738
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->show()V

    .line 1740
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->expand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
