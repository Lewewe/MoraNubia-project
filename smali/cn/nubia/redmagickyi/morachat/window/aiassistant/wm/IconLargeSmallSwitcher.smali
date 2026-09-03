.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;
.super Ljava/lang/Object;
.source "IconLargeSmallSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;
    }
.end annotation


# instance fields
.field private final AT_LEFT:I

.field private final AT_NONE:I

.field private final AT_RIGHT:I

.field private animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

.field private animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

.field private isOverDrag:I

.field private listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->AT_NONE:I

    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->AT_LEFT:I

    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->AT_RIGHT:I

    .line 22
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->vibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    return-object p0
.end method

.method private vibrator(Landroid/view/View;)V
    .locals 3

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 56
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 57
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->cancel()V

    .line 40
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onLargeIconDragging(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v0, :cond_1

    .line 63
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    .line 65
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->vibrator(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getLargeIconWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getWindowWidth()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 69
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 70
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    .line 71
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->vibrator(Landroid/view/View;)V

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getLargeIconWidth()I

    move-result v1

    add-int/2addr p1, v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getWindowWidth()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    .line 76
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    return-void
.end method

.method public switchToLargeIcon(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;",
            "Landroid/animation/AnimatorListenerAdapter;",
            ")Z"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->isIconAtRight()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    const/high16 v3, 0x43480000    # 200.0f

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v0, v2, :cond_2

    .line 177
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->cancelAnim()V

    .line 178
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 179
    iget-object v10, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v10}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getLargeIconWidth()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    .line 181
    new-instance v7, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {v7, p0, v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 182
    new-array v11, v1, [F

    aput v10, v11, v9

    aput v6, v11, v2

    invoke-virtual {v7, v11}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 183
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v6, v4, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v5, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$7;

    invoke-direct {v5, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$7;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v4, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    new-instance v4, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {v4, p0, v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 194
    new-array v1, v1, [F

    aput v0, v1, v9

    aput v10, v1, v2

    invoke-virtual {v4, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 195
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    sub-float v0, v10, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v10

    float-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$8;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$8;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$9;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$9;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->start()V

    return v2

    :cond_1
    return v9

    :cond_2
    if-ne v0, v1, :cond_3

    .line 226
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->cancelAnim()V

    .line 227
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 228
    iget-object v10, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v10}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getLargeIconWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    .line 230
    new-instance v7, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {v7, p0, v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 231
    new-array v11, v1, [F

    aput v10, v11, v9

    aput v6, v11, v2

    invoke-virtual {v7, v11}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 232
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v6, v4, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v5, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$10;

    invoke-direct {v5, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$10;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v4, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    new-instance v4, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {v4, p0, v8}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 243
    new-array v1, v1, [F

    aput v0, v1, v9

    aput v10, v1, v2

    invoke-virtual {v4, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 244
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    sub-float v0, v10, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v10

    float-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$11;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$11;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$12;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$12;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 268
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->start()V

    return v2

    :cond_3
    return v9
.end method

.method public switchToSmallIcon(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;",
            "Landroid/animation/AnimatorListenerAdapter;",
            ")Z"
        }
    .end annotation

    .line 81
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->isOverDrag:I

    const/high16 v1, 0x43480000    # 200.0f

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    const v5, 0x3f8ccccd    # 1.1f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->cancelAnim()V

    .line 84
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 85
    iget-object v10, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v10}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getLargeIconWidth()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    .line 87
    new-instance v5, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {v5, p0, v6}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 88
    new-array v11, v7, [F

    aput v10, v11, v8

    aput v4, v11, v9

    invoke-virtual {v5, v11}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 89
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v4, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;

    invoke-direct {v3, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v2, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {p2, p0, v6}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 100
    new-array v2, v7, [F

    aput v0, v2, v8

    aput v10, v2, v9

    invoke-virtual {p2, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 101
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    sub-float v0, v10, v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v10

    float-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->start()V

    return v9

    :cond_0
    return v8

    :cond_1
    if-ne v0, v7, :cond_2

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->cancelAnim()V

    .line 128
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 129
    iget-object v10, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->listener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    invoke-interface {v10}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->getLargeIconWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    .line 131
    new-instance v5, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {v5, p0, v6}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 132
    new-array v11, v7, [F

    aput v10, v11, v8

    aput v4, v11, v9

    invoke-virtual {v5, v11}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 133
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v4, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$4;

    invoke-direct {v3, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animIn:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {v2, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-direct {p2, p0, v6}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$1;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    .line 144
    new-array v2, v7, [F

    aput v0, v2, v8

    aput v10, v2, v9

    invoke-virtual {p2, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setFloatValues([F)V

    .line 145
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    sub-float v0, v10, v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v10

    float-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$5;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$6;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->animOut:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->start()V

    return v9

    :cond_2
    return v8
.end method
