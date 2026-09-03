.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuPanel"
.end annotation


# instance fields
.field private easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

.field private layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;


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

    .line 1060
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V
    .locals 0

    .line 1060
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;Z)V
    .locals 0

    .line 1060
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->showMenu(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;Z)V
    .locals 0

    .line 1060
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->hideMenu(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isMenuShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->expand()V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;
    .locals 0

    .line 1060
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-object p0
.end method

.method static synthetic access$3800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->packup()V

    return-void
.end method

.method static synthetic access$5000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)[I
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->getPanelSize()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;I)V
    .locals 0

    .line 1060
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->onIconAtLocation(I)V

    return-void
.end method

.method static synthetic access$5700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isExpanded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;
    .locals 0

    .line 1060
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    return-object p0
.end method

.method static synthetic access$6300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)I
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->getPanelMaxWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->createWindow()V

    return-void
.end method

.method private animInHorizontal(Landroid/view/View;Z)V
    .locals 3

    .line 1263
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1266
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

    .line 1271
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1273
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1275
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1276
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1277
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1278
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1279
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setDuration(J)V

    .line 1280
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1281
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animInVertical(Landroid/view/View;Z)V
    .locals 3

    .line 1218
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1221
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

    .line 1226
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1228
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1230
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1231
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1232
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1233
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1234
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setDuration(J)V

    .line 1235
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1236
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOutHorizontal(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1285
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1288
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

    .line 1293
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1295
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_33_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1297
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1298
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1299
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1300
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1301
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setDuration(J)V

    .line 1302
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1303
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1304
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1243
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

    .line 1248
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p2, v0, v0, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 1250
    :cond_2
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v0, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1252
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1253
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Z)V

    .line 1254
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1255
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    .line 1256
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setDuration(J)V

    .line 1257
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1258
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1259
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createWindow()V
    .locals 3

    .line 1065
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, "MenuPanel"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->with(Landroid/app/Application;Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setAnimStyle(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1067
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setGravity(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1068
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setContentView(Landroid/view/View;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1069
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1070
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 1071
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/EmptyDraggable;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/EmptyDraggable;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setDraggable(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-void
.end method

.method private expand()V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1196
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1197
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 1198
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->removeWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    :cond_0
    return-void
.end method

.method private getPanelMaxWidth()I
    .locals 2

    .line 1390
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1391
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getMaxWidth()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method private getPanelSize()[I
    .locals 6

    .line 1373
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isMenuShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getSize()[I

    move-result-object v0

    .line 1375
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1376
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1377
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 p0, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 1379
    new-array v1, v1, [I

    aget v5, v0, v2

    aput v5, v1, v2

    aget v0, v0, p0

    aput v0, v1, p0

    :goto_1
    if-eqz v1, :cond_2

    .line 1381
    aget v0, v1, v2

    add-int/2addr v0, v3

    aput v0, v1, v2

    .line 1382
    aget v0, v1, p0

    add-int/2addr v0, v4

    aput v0, v1, p0

    return-object v1

    .line 1385
    :cond_2
    filled-new-array {v2, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 1095
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_aiassistant_window_menu:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1096
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method private hideMenu(Z)V
    .locals 3

    .line 1140
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideMenu, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isMenuShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationIn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1144
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isMenuShowing()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 1147
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    .line 1151
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->animOutVertical(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 1148
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setTag(Ljava/lang/Object;)V

    .line 1149
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setVisibility(I)V

    .line 1169
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 1101
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_menu_ai_functions:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    const/16 v0, 0x8

    .line 1129
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setVisibility(I)V

    .line 1131
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_MENU_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1132
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_MENU_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 1133
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->showMenu(Z)V

    goto :goto_0

    .line 1135
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->hideMenu(Z)V

    :goto_0
    return-void
.end method

.method private isExpanded()Z
    .locals 2

    .line 1214
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMenuShowing()Z
    .locals 1

    .line 1191
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getTag()Ljava/lang/Object;

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
    .locals 5

    .line 1321
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1324
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->updateMenuSize()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 1326
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    .line 1332
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v1, v3

    goto :goto_0

    .line 1337
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v1, p1

    move p1, v3

    .line 1339
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1340
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1341
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1342
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1343
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1344
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setReverseLayout(Z)V

    goto :goto_2

    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1348
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_3

    .line 1353
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v2, v3

    goto :goto_1

    .line 1358
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$4900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v2, p1

    move p1, v3

    .line 1360
    :goto_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1361
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1362
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1363
    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1364
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1365
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setReverseLayout(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private packup()V
    .locals 2

    .line 1203
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1204
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1205
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1206
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->hideMenu(Z)V

    .line 1208
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_1

    const/16 v0, 0x10

    .line 1209
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->addWindowFlags(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    :cond_1
    return-void
.end method

.method private showMenu(Z)V
    .locals 3

    .line 1173
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showMenu, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->isMenuShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->updateMenuSize()V

    .line 1175
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$AnimationOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 1180
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    .line 1181
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    .line 1183
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$6000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1184
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->isIconAtBottom()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->animInVertical(Landroid/view/View;Z)V

    .line 1186
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->setVisibility(I)V

    .line 1187
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method private updateMenuSize()V
    .locals 4

    .line 1308
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getSize()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 1310
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v3, :cond_0

    .line 1311
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1313
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, -0x2

    .line 1314
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_2

    .line 1315
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1317
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->layoutAiFuntionsView:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized hideMain()V
    .locals 1

    monitor-enter p0

    .line 1085
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->packup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 0

    .line 1089
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz p0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->recycle()V

    :cond_0
    return-void
.end method

.method public declared-synchronized showMain()V
    .locals 1

    monitor-enter p0

    .line 1075
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->show()V

    .line 1078
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->expand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
