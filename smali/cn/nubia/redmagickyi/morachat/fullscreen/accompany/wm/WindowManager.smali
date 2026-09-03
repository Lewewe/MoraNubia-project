.class public Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;
    }
.end annotation


# instance fields
.field private context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

.field private hideCameraTipsUI:Ljava/lang/Runnable;

.field private hideUI:Ljava/lang/Runnable;

.field private isShowing:Z

.field private ivBack:Landroid/widget/ImageView;

.field private ivCamera:Landroid/widget/ImageView;

.field private ivLoading:Landroid/widget/ImageView;

.field private layoutCamera:Landroid/view/View;

.field private layoutLoading:Landroid/view/View;

.field private onEventListener:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;

.field private permissionRequestingView:Landroid/view/View;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private popBot:Landroid/view/View;

.field private popBotAnimator:Lcn/nubia/redmagickyi/util/BezierAnimator;

.field private popBotSpeaking:Landroid/view/View;

.field private popBotThinking:Landroid/view/View;

.field private popUser:Landroid/view/View;

.field private popUserSpeaking:Landroid/view/View;

.field private popUserToSpeak:Landroid/view/View;

.field private tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

.field private tvCameraTips:Landroid/widget/TextView;

.field private tvLoading:Landroid/widget/TextView;

.field private unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->isShowing:Z

    .line 414
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideUI:Ljava/lang/Runnable;

    .line 424
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$5;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideCameraTipsUI:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    .line 59
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->onEventListener:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;

    .line 60
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->initView(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->handleUserPop(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutLoading:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutCamera:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCameraTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;ZZ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->handleBotPop(ZZ)V

    return-void
.end method

.method private declared-synchronized handleBotPop(ZZ)V
    .locals 13

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    .line 487
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 488
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 489
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotAnimator:Lcn/nubia/redmagickyi/util/BezierAnimator;

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/BezierAnimator;->cancel()V

    .line 492
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 494
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 495
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const p1, 0x3e2e147b    # 0.17f

    const/high16 v0, 0x40000000    # 2.0f

    .line 500
    invoke-static {p1, v0, v4, v2}, Lcn/nubia/redmagickyi/util/BezierAnimator;->of(FFFF)Lcn/nubia/redmagickyi/util/BezierAnimator;

    move-result-object p1

    const-wide/16 v4, 0x1f4

    invoke-virtual {p1, v4, v5}, Lcn/nubia/redmagickyi/util/BezierAnimator;->setDuration(J)Lcn/nubia/redmagickyi/util/BezierAnimator;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;FFFFFF)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/BezierAnimator;->addUpdateListener(Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;)Lcn/nubia/redmagickyi/util/BezierAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotAnimator:Lcn/nubia/redmagickyi/util/BezierAnimator;

    .line 508
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/BezierAnimator;->start()V

    :cond_1
    if-eqz p2, :cond_3

    .line 512
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 514
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 515
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 516
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 519
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 520
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 521
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 522
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 526
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 528
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 529
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 530
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 533
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 534
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 535
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 536
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 541
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    .line 542
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 543
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotAnimator:Lcn/nubia/redmagickyi/util/BezierAnimator;

    if-eqz p1, :cond_6

    .line 544
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/BezierAnimator;->cancel()V

    .line 546
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 547
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 548
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const p1, 0x3f266666    # 0.65f

    const p2, 0x3eb33333    # 0.35f

    .line 553
    invoke-static {p1, v0, p2, v2}, Lcn/nubia/redmagickyi/util/BezierAnimator;->of(FFFF)Lcn/nubia/redmagickyi/util/BezierAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/util/BezierAnimator;->setDuration(J)Lcn/nubia/redmagickyi/util/BezierAnimator;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$10;

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$10;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;FFFFFF)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/BezierAnimator;->addUpdateListener(Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;)Lcn/nubia/redmagickyi/util/BezierAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotAnimator:Lcn/nubia/redmagickyi/util/BezierAnimator;

    .line 572
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/BezierAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleUserPop(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 597
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 598
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 599
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 600
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 603
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserToSpeak:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 604
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserToSpeak:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserToSpeak:Landroid/view/View;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 608
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 609
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 610
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 611
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 614
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserToSpeak:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 615
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserToSpeak:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserToSpeak:Landroid/view/View;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private showUI()V
    .locals 3

    .line 402
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideUI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 403
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutCamera:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutCamera:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutCamera:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 411
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideUI:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateCameraState()V
    .locals 4

    .line 299
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_FULLSCREEN_ACCOMPANY_CAMERA_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_FULLSCREEN_ACCOMPANY_CAMERA_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v3, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 302
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivCamera:Landroid/widget/ImageView;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_company_cameraoff:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->gray_FF8A8A8A:I

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setStrokeColor(I)V

    .line 304
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->gray_FF8A8A8A:I

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setShadowColor(I)V

    .line 305
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCameraTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideCameraTipsUI:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivCamera:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_company_cameraon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setStrokeColor(I)V

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setShadowColor(I)V

    .line 311
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCameraTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideCameraTipsUI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 313
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideCameraTipsUI:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivCamera:Landroid/widget/ImageView;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_company_cameraoff:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->gray_FF8A8A8A:I

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setStrokeColor(I)V

    .line 318
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->gray_FF8A8A8A:I

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setShadowColor(I)V

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCameraTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideCameraTipsUI:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateUIByOrientation(Landroid/content/res/Configuration;)V
    .locals 5

    if-nez p1, :cond_0

    .line 353
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 355
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 356
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isPortrait(Z)V

    .line 357
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v2

    .line 358
    aget v3, v2, v0

    .line 359
    aget v1, v2, v1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 360
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 361
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 362
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 363
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v3, :cond_3

    .line 364
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 365
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutCamera:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 369
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_46_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 370
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v3, :cond_4

    .line 371
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 372
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutCamera:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :cond_4
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCameraTips:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 376
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_70_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 377
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v0, v3, :cond_5

    .line 378
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 379
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCameraTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit16 v2, v1, 0x4c0

    .line 384
    div-int/lit16 v2, v2, 0xa80

    if-eqz p1, :cond_6

    const/16 p1, 0x13e

    goto :goto_2

    :cond_6
    const/16 p1, 0x1a2

    :goto_2
    mul-int/2addr v2, p1

    .line 385
    div-int/lit16 v2, v2, 0x4c0

    mul-int/lit16 p1, v1, 0x381

    .line 386
    div-int/lit16 p1, p1, 0xa80

    .line 387
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v3, v2, :cond_7

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v3, p1, :cond_8

    .line 388
    :cond_7
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 389
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 390
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutLoading:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v1, v1, 0x64

    .line 394
    div-int/lit16 v1, v1, 0xa80

    .line 395
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v1, :cond_9

    .line 396
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 397
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutLoading:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public changeUnitySkin()V
    .locals 0

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->changeUnitySkin()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 293
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->showUI()V

    const/4 p0, 0x0

    return p0
.end method

.method public hideBotPop()V
    .locals 2

    .line 477
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$8;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$8;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideUserPop()V
    .locals 2

    .line 587
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$12;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$12;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initView(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;)V
    .locals 8

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_back:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->iv_back_abroad:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    .line 75
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->loading_layout:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutLoading:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvLoading:Landroid/widget/TextView;

    .line 79
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_loading_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivLoading:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 83
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v7, Lcn/nubia/redmagickyi/main/R$id;->surface_background:I

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceView;

    invoke-direct {v0, v1, v2, v6}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    .line 84
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->getUnityView()Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setScaleX(F)V

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->getUnityView()Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setScaleY(F)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->setUnityAudioActionCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;)V

    .line 87
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;)V

    .line 169
    new-instance p1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    const v1, 0x13880

    invoke-direct {p1, v1, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 186
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_camera:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->layoutCamera:Landroid/view/View;

    .line 187
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_camera:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->ivCamera:Landroid/widget/ImageView;

    .line 189
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_camera:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/StrokeTextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCamera:Lcn/nubia/redmagickyi/view/StrokeTextView;

    .line 190
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_camera_tips:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->tvCameraTips:Landroid/widget/TextView;

    .line 191
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->updateCameraState()V

    .line 193
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pop_user:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUser:Landroid/view/View;

    .line 194
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUser:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pop_user_to_speak:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserToSpeak:Landroid/view/View;

    .line 197
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pop_user_speaking:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    .line 199
    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popUserSpeaking:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pop_bot:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    .line 202
    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBot:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pop_bot_thinking:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    const/4 v0, 0x2

    .line 205
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 209
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotThinking:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pop_bot_speaking:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    .line 213
    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->popBotSpeaking:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->showUI()V

    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    .line 219
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->setOnModelEmotionListener(Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public isShowing()Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->isShowing:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 329
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_back:I

    if-eq v0, v1, :cond_3

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_back_abroad:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_camera:I

    if-ne v0, v1, :cond_2

    .line 332
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 333
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_FULLSCREEN_ACCOMPANY_CAMERA_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p1

    .line 335
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_FULLSCREEN_ACCOMPANY_CAMERA_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 336
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->updateCameraState()V

    goto :goto_1

    .line 338
    :cond_1
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionRequestingView:Landroid/view/View;

    goto :goto_1

    .line 340
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->pop_user:I

    if-ne v0, p1, :cond_4

    .line 341
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->onEventListener:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;

    if-eqz p0, :cond_4

    .line 342
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;->onPopUserClicked()V

    goto :goto_1

    .line 330
    :cond_3
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->onBackPressed()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onNetTypeChanged()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionRequestingView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->permissionRequestingView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public onStateMachineChanged()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->release()V

    .line 254
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->destroy()V

    return-void
.end method

.method public setUnityMute()V
    .locals 0

    .line 447
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mute()V

    :cond_0
    return-void
.end method

.method public setUnityUnmute()V
    .locals 0

    .line 441
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->unmute()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->isShowing:Z

    return-void
.end method

.method public showBotPopSpeaking()V
    .locals 2

    .line 468
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$7;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$7;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showBotPopThinking()V
    .locals 2

    .line 459
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$6;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showUserPop()V
    .locals 2

    .line 578
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$11;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$11;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSpeaking(Ljava/lang/Integer;ZLcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->startSpeaking(Ljava/lang/Integer;ZLcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V

    :cond_0
    return-void
.end method

.method public startWords(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public stopSpeaking()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->unityPreview:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->stopSpeaking()V

    :cond_0
    return-void
.end method

.method public stopWords()V
    .locals 0

    return-void
.end method
