.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorPanel"
.end annotation


# instance fields
.field private easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

.field private ivCaption:Landroid/widget/ImageView;

.field private ivCaptionIcon:Landroid/widget/ImageView;

.field private layoutAccompany:Landroid/view/View;

.field private layoutCaption:Landroid/widget/FrameLayout;

.field private layoutChat:Landroid/view/View;

.field private layoutMenu:Landroid/widget/LinearLayout;

.field private layoutTranslate:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

.field private tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 787
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->createWindow()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->hideMenu()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;
    .locals 0

    .line 780
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->packup()V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)Z
    .locals 0

    .line 780
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->showMenu()V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)Landroid/widget/FrameLayout;
    .locals 0

    .line 780
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)Landroid/widget/LinearLayout;
    .locals 0

    .line 780
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->showCaption()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->expand()V

    return-void
.end method

.method private animIn(Landroid/view/View;Z)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 1023
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-direct {p2, v0, p0, p0, p0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1025
    :cond_0
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, -0x3d380000    # -100.0f

    invoke-direct {p2, v0, p0, p0, p0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1027
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1028
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1029
    invoke-virtual {p0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1030
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0xfa

    .line 1031
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1032
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1033
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOut(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 1039
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-direct {p2, p0, v0, p0, p0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1041
    :cond_0
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, -0x3d380000    # -100.0f

    invoke-direct {p2, p0, v0, p0, p0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1043
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1044
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1045
    invoke-virtual {p0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1046
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0xfa

    .line 1047
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1048
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1049
    invoke-virtual {p0, p3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1050
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createWindow()V
    .locals 3

    .line 792
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->with(Landroid/app/Application;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    const/4 v1, 0x0

    .line 793
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 794
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setGravity(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 795
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 796
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 797
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    return-void
.end method

.method private expand()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1002
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateLocation()V

    .line 1003
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 1004
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    :cond_0
    return-void
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 821
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_window_operator:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 822
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method private hideMenu()V
    .locals 3

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideMenu, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result v0

    const/16 v1, 0x8

    .line 932
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$3100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 939
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 940
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->animOut(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 936
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 937
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateLocation()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 827
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 828
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    .line 830
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 832
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_caption_talk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    .line 833
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaption:Landroid/widget/ImageView;

    .line 834
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    .line 835
    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->setOnScrollStateChangedListener(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;)V

    .line 849
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_translate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutTranslate:Landroid/view/View;

    .line 850
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_chat:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutChat:Landroid/view/View;

    .line 852
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_accompany:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutAccompany:Landroid/view/View;

    .line 854
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutAccompany:Landroid/view/View;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 857
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_MENU_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 858
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_MENU_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 859
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->showMenu()V

    goto :goto_0

    .line 861
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->hideMenu()V

    :goto_0
    return-void
.end method

.method private isCaptionShowing()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

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

.method private isExpanded()Z
    .locals 2

    .line 1017
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isCaptionShowing()Z

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

.method private isMenuShowing()Z
    .locals 1

    .line 997
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

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

.method private onIconAtLeft()V
    .locals 5

    .line 1101
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1103
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_35_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1104
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1105
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_40_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1107
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1108
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_bg_floatingwindow_actioins:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1111
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_58_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1112
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1113
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1114
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 1116
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1117
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1118
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1119
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x13

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1120
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaption:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_bg_floatingwindow_talk:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1125
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1126
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1127
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1129
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1132
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_38_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1133
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1134
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1135
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1139
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1140
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1141
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private onIconAtRight()V
    .locals 5

    .line 1055
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1057
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1058
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_35_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1059
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_40_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1061
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1062
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_bg_floatingwindow_actioins_mirror:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1065
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1066
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_58_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1067
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1068
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 1070
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1071
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1072
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1073
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1074
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaption:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_bg_floatingwindow_talk_mirror:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1079
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1080
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1081
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1083
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1086
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1087
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_38_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1088
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1089
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->ivCaption:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1093
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1094
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1095
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private packup()V
    .locals 2

    .line 1009
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1010
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateLocation()V

    .line 1011
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 1012
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    :cond_0
    return-void
.end method

.method private showCaption()V
    .locals 3

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showCaption, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->isScrolling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isCaptionShowing()Z

    move-result v0

    const/4 v1, 0x0

    .line 963
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->hideMenu()V

    .line 968
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 969
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$3100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->animIn(Landroid/view/View;Z)V

    .line 972
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 974
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateLocation()V

    return-void
.end method

.method private showMenu()V
    .locals 3

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showMenu, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result v0

    const/4 v1, 0x0

    .line 984
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 980
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->hideCaption()V

    .line 984
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 985
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$3100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->animIn(Landroid/view/View;Z)V

    .line 988
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 989
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateLocation()V

    return-void
.end method


# virtual methods
.method public hideCaption()V
    .locals 3

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideCaption, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isCaptionShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isCaptionShowing()Z

    move-result v0

    const/16 v1, 0x8

    .line 901
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$3100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 908
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->animOut(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 905
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 906
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 926
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateLocation()V

    return-void
.end method

.method public declared-synchronized hideMain()V
    .locals 1

    monitor-enter p0

    .line 811
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->packup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 868
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 869
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_translate:I

    const-string v1, "Window-WindowManager"

    if-ne p1, v0, :cond_0

    .line 870
    const-string p1, "onTranslateClicked"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;->onTranslateClicked()V

    goto :goto_0

    .line 872
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_chat:I

    if-ne p1, v0, :cond_1

    .line 873
    const-string p1, "onChatClicked"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;->onChatClicked()V

    goto :goto_0

    .line 875
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_accompany:I

    if-ne p1, v0, :cond_2

    .line 876
    const-string p1, "onAccompanyClicked"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p1

    .line 878
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutAccompany:Landroid/view/View;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 879
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 815
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->recycle()V

    :cond_0
    return-void
.end method

.method public showCaption(Ljava/lang/String;I)V
    .locals 3

    .line 888
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->setText(Ljava/lang/String;J)V

    .line 889
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 890
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_75_dp:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getViewWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->tvCaption:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 891
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p2, v0, :cond_1

    .line 892
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 893
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->updateLocation()V

    return-void
.end method

.method public declared-synchronized showMain()V
    .locals 1

    monitor-enter p0

    .line 801
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->show()V

    .line 804
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->expand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAccompanyState()V
    .locals 2

    .line 884
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutAccompany:Landroid/view/View;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public updateLocation()V
    .locals 7

    .line 1148
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getIconWidth()I

    move-result v0

    .line 1149
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getWindowWidth()I

    move-result v1

    .line 1150
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->getWindowHeight()I

    move-result v2

    .line 1152
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isMenuShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1153
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1154
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr v5, v3

    sub-int/2addr v5, v0

    goto :goto_1

    .line 1155
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isCaptionShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1156
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->layoutCaption:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1157
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    move v5, v4

    .line 1160
    :goto_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->isIconAtRight()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1165
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$3400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    .line 1166
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->onIconAtRight()V

    if-lez v5, :cond_9

    .line 1170
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v5

    sub-int/2addr v2, v0

    .line 1171
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gez v3, :cond_2

    .line 1173
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {v0, v4, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 1174
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1175
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p0, v3

    invoke-static {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$3500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;II)V

    goto/16 :goto_2

    :cond_2
    add-int v4, v3, v0

    add-int/2addr v4, v5

    if-le v4, v1, :cond_4

    .line 1181
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1182
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0, v3, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    goto/16 :goto_2

    .line 1184
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    sub-int/2addr v1, v0

    sub-int/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    goto/16 :goto_2

    .line 1187
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0, v3, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    goto/16 :goto_2

    .line 1193
    :cond_5
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$3600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V

    .line 1194
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->onIconAtLeft()V

    if-lez v5, :cond_9

    .line 1198
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v0

    .line 1199
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gez v3, :cond_7

    .line 1201
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1202
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0, v3, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    goto :goto_2

    .line 1204
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0, v4, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    goto :goto_2

    :cond_7
    add-int/2addr v0, v3

    add-int/2addr v0, v5

    if-le v0, v1, :cond_8

    .line 1210
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    sub-int/2addr v0, v1

    sub-int v1, v2, v0

    invoke-virtual {v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 1211
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1212
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p0, v0

    invoke-static {v1, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$3500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;II)V

    goto :goto_2

    .line 1215
    :cond_8
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    invoke-virtual {p0, v3, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->setXYOffset(II)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    :cond_9
    :goto_2
    return-void
.end method
