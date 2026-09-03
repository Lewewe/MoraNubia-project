.class public Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "RedmagicAlarmClockActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$PowerKeyBroadcastReceiver;,
        Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;,
        Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_DESTROY:I = 0x6

.field public static final ACTION_DISMISS:I = 0x3

.field public static final ACTION_ON_NEW_INTENT:I = 0x5

.field public static final ACTION_SNOOZE:I = 0x2

.field public static final ACTION_TIMEOUT:I = 0x4

.field public static final ACTIVITY_CREATE:I = 0x1

.field public static final ALARM_BEANS:Ljava/lang/String; = "alarm_beans"

.field private static final TAG:Ljava/lang/String; = "RedmagicAlarmClockActivity"

.field private static final ZTE_ALARM_SERVICE_NAME:Ljava/lang/String; = "zte.com.cn.alarmclock.MessengerService"

.field public static final ZTE_ALARM_SERVICE_PACKAGE:Ljava/lang/String; = "cn.nubia.deskclock.preset"

.field public static final ZTE_ALARM_SERVICE_PACKAGE2:Ljava/lang/String; = "zte.com.cn.alarmclock"


# instance fields
.field private alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

.field private alphaAnimation:Landroid/view/animation/Animation;

.field private isSceneLoaded:Z

.field private mActivePointerId:I

.field private mAlarmBootView:Landroid/view/View;

.field private mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

.field private mExitRunnable:Ljava/lang/Runnable;

.field private mImgHintSlide:Landroid/widget/ImageView;

.field private mLayoutRepeat:Landroid/view/ViewGroup;

.field private mMainHandler:Landroid/os/Handler;

.field private mPowerKeyBroadcastReceiver:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$PowerKeyBroadcastReceiver;

.field private mRepeatTenMin:Landroid/widget/TextView;

.field private mRepeatTenMinMain:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/ViewGroup;

.field private final mSecondStartPoint:Landroid/graphics/PointF;

.field private mSecondaryPointerId:I

.field private mService:Landroid/os/Messenger;

.field private mSnoozeDown:Z

.field private final mStartPoint:Landroid/graphics/PointF;

.field private mStartScrollX:I

.field private mStartScrollY:I

.field private mTVLabel:Landroid/widget/TextView;

.field private mTrackEventDurationStartTime:J

.field private mTvVoice:Landroid/widget/TextView;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeHandler:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private typeImg:Landroid/widget/ImageView;

.field private unityView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 110
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSecondStartPoint:Landroid/graphics/PointF;

    .line 111
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartPoint:Landroid/graphics/PointF;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mMainHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 678
    new-instance v0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$3;-><init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mExitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isSceneLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)Landroid/view/View;
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mAlarmBootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->onSceneLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)Landroid/widget/TextView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTvVoice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->exit()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 612
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 614
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private addWindowFlags()V
    .locals 3

    .line 618
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 619
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const v1, -0x7fffff80

    .line 620
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    .line 621
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->setShowWhenLocked(Z)V

    .line 622
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->setTurnScreenOn(Z)V

    .line 623
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 624
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 625
    invoke-virtual {v1, p0, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_0
    const/4 p0, 0x0

    .line 627
    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 628
    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private doActionDown(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->inSnoozeLayout(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSnoozeDown:Z

    .line 761
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 762
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mActivePointerId:I

    .line 763
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartScrollX:I

    .line 764
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartScrollY:I

    .line 765
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private doActionMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 736
    iget v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 751
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 752
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    .line 753
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->doMoveUp(I)V

    :cond_1
    return-void

    .line 738
    :cond_2
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSecondaryPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 740
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 741
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSecondStartPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 742
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSecondStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 743
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->doMoveUp(I)V

    :cond_3
    return-void
.end method

.method private doActionPointerDown(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    .line 769
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->inSnoozeLayout(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSnoozeDown:Z

    .line 772
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 773
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSecondaryPointerId:I

    .line 774
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSecondStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private doActionPointerUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 778
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSnoozeDown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->inSnoozeLayout(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->inSnoozeLayout(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 779
    :cond_0
    const-string p1, "RedmagicAlarmClockActivity"

    const-string v0, "pointer-up to repeat"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 782
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSnoozeDown:Z

    return-void
.end method

.method private doActionUp(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSnoozeDown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->inSnoozeLayout(II)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    const-string p1, "RedmagicAlarmClockActivity"

    const-string p2, "up to repeat"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 787
    :cond_1
    :goto_0
    iget p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartScrollX:I

    iget v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartScrollY:I

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 788
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    :goto_1
    const/4 p1, 0x0

    .line 793
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mSnoozeDown:Z

    return-void
.end method

.method private doMoveUp(I)V
    .locals 3

    .line 797
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_alarm_drag:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 798
    iget v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartScrollX:I

    iget v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mStartScrollY:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 799
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 800
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isSmallHeightDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    if-le p1, v0, :cond_1

    .line 802
    const-string p1, "RedmagicAlarmClockActivity"

    const-string v0, "slide to exit"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 803
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->RepeatAlarm(Z)V

    .line 804
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->exit()V

    :cond_1
    return-void
.end method

.method private exit()V
    .locals 2

    .line 649
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 652
    :cond_0
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 654
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->finish()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;J)V
    .locals 3

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 238
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 239
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0x8

    .line 240
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getBgmPath()Ljava/lang/String;
    .locals 13

    .line 484
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->getLocalBundlePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "/assets"

    if-eqz v2, :cond_0

    move-object v0, v3

    :cond_0
    const/4 v2, 0x4

    .line 489
    new-array v4, v2, [Ljava/io/File;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Audio"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Mora2DDefault"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "US"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "bgm.mp3"

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bgm.wav"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-object v5, v4, v0

    move-object v0, v1

    :goto_0
    if-ge v6, v2, :cond_5

    .line 495
    aget-object v5, v4, v6

    .line 496
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "getBgmPath success: "

    const-string v10, "RedmagicAlarmClockActivity"

    if-eqz v8, :cond_2

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v8, "/assets/"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 502
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 498
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v7, v0

    move-object v0, v5

    .line 503
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "getBgmPath failed: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto :goto_4

    .line 506
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 508
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    move-object v0, v7

    goto :goto_5

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_5
    return-object v0
.end method

.method private hideNavigationBar()V
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private inSnoozeLayout(II)Z
    .locals 2

    .line 809
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mLayoutRepeat:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 810
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 811
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mLayoutRepeat:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 812
    iget p0, v0, Landroid/graphics/Rect;->left:I

    if-le p1, p0, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->right:I

    if-ge p1, p0, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->top:I

    if-le p2, p0, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private initAlarmBootBg(I)V
    .locals 3

    .line 888
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcn/nubia/redmagickyi/skin/util/AlarmClockBackgroundManager;->getBackground(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 890
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mAlarmBootView:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private initOrientationn(Landroid/content/res/Configuration;)V
    .locals 5

    if-eqz p1, :cond_b

    .line 905
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 906
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 907
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 908
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->view_header:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 911
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 914
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_margin_top_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 916
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 918
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mLayoutRepeat:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 921
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 923
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 925
    :cond_3
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    if-ne p1, v2, :cond_4

    .line 927
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_margin_top_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 928
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_margin_right_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 930
    :cond_4
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 931
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 934
    :cond_5
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mLayoutRepeat:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRepeatTenMinMain:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 938
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_7

    .line 940
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_174_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_66_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 942
    :cond_7
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_9

    if-ne p1, v2, :cond_8

    .line 944
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f40_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 945
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_margin_right_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 947
    :cond_8
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 948
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->alarm_digital_clock_layout_repeat_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 951
    :cond_9
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRepeatTenMinMain:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    :cond_a
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initAlarmBootBg(I)V

    .line 955
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initSceneOrientation(I)V

    :cond_b
    return-void
.end method

.method private initSceneOrientation(I)V
    .locals 1

    .line 895
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 896
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;-><init>()V

    const/16 v0, 0x44d

    .line 897
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setMsgID(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 898
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setOrientation(I)V

    .line 899
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 5

    .line 517
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRootView:Landroid/view/ViewGroup;

    .line 519
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_boot_foreground:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mAlarmBootView:Landroid/view/View;

    .line 521
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getPowerChargeTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 523
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_slide:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mImgHintSlide:Landroid/widget/ImageView;

    .line 524
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 525
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 526
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 527
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 529
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_date:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/TimeStrUtils;->getCurrentTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_mask:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 532
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->alarm_digital_clock_mask_shadow_gradient_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/ScrimUtil;->makeCubicGradientScrimDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 533
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->repeat_ten_minute:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRepeatTenMin:Landroid/widget/TextView;

    .line 534
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->alarm_repeat_ten:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->isEnAreaLanguage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRepeatTenMin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRepeatTenMin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 543
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->repeat_ten_minute_main:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mRepeatTenMinMain:Landroid/view/ViewGroup;

    .line 544
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xd

    .line 546
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 547
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 548
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->tv_am_pm:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p0, v3, v0}, Lcn/nubia/redmagickyi/util/TimeStrUtils;->getAmPm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_voice:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTvVoice:Landroid/widget/TextView;

    .line 550
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->alarm_voice_tip1:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->type_img:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->typeImg:Landroid/widget/ImageView;

    .line 567
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->tv_label:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTVLabel:Landroid/widget/TextView;

    .line 568
    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v3, :cond_4

    .line 569
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 570
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTVLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 572
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTVLabel:Landroid/widget/TextView;

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->alarm_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 574
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->isUnitAlarmVoice(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 576
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTvVoice:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v3

    invoke-static {p0, v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmVoice(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 578
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTvVoice:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getVocie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :goto_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->typeImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmTypeImage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 582
    :cond_4
    sget v3, Lcn/nubia/redmagickyi/main/R$string;->alarm_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 583
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTvVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :goto_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v2

    if-gtz v2, :cond_5

    .line 586
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTvVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initVoiceTextGravity()V

    .line 589
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_repeat:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mLayoutRepeat:Landroid/view/ViewGroup;

    .line 590
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 591
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initOrientationn(Landroid/content/res/Configuration;)V

    .line 593
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->playAlarmBgm()V

    return-void
.end method

.method private onSceneLoaded()V
    .locals 3

    .line 448
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v1, 0x3e8

    .line 449
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v1, 0x1

    .line 450
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 451
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v1

    if-lez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    goto :goto_0

    .line 454
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->mAlarmMotionMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 457
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 458
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initSceneOrientation(I)V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 149
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/16 v1, 0x3e7

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    const/16 v3, 0x7d9

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v4, "msgID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 155
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    const/16 v0, 0x7d0

    if-ne v1, v0, :cond_3

    .line 164
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->switchScene()V

    goto :goto_2

    :cond_3
    const/16 v0, 0x7d7

    const/4 v2, 0x1

    if-ne v1, v0, :cond_5

    .line 167
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    .line 169
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 170
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$1;-><init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V

    .line 177
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 v1, 0x3e8

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x190

    .line 170
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    if-ne v1, v3, :cond_8

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_6

    goto :goto_2

    .line 183
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    .line 184
    sget-object p1, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ALARM:Lcn/nubia/redmagickyi/util/AudioStreamType;

    iget-object p1, p1, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setParams(Ljava/lang/String;)V

    .line 186
    :cond_7
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    :goto_2
    return-void
.end method

.method private playAlarmBgm()V
    .locals 8

    .line 468
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "begin play playAlarmBgm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getBgmPath()Ljava/lang/String;

    move-result-object v6

    .line 471
    new-instance v0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v1, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ALARM:Lcn/nubia/redmagickyi/util/AudioStreamType;

    iget-object v7, v1, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mVolumeHandler:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;-><init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mVolumeHandler:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;

    .line 476
    new-instance v0, Lcn/nubia/redmagickyi/util/AudioFocus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/AudioFocus;-><init>(Landroid/content/Context;ZLcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    .line 477
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->registAudioFocus()V

    .line 478
    new-instance v0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mVolumeHandler:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;-><init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;Landroid/os/Handler;)V

    .line 479
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->run()V

    :cond_0
    return-void
.end method

.method private releaseResource()V
    .locals 1

    .line 636
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 638
    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private repeat()V
    .locals 2

    .line 658
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 661
    :cond_0
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "repeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->finish()V

    return-void
.end method

.method private sendOnAlarmClockLaunchChanged(Z)V
    .locals 0

    .line 961
    invoke-static {p1}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->onAlarmClockLaunchChanged(Z)V

    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 462
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 463
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 464
    const-string v0, "alarmclock"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 465
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RedmagicAlarmClockActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public RepeatAlarm(Z)V
    .locals 14

    .line 386
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_OFF:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 389
    sget-wide v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->ALARM_RING_DELAY_TIMEMILLIS:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 390
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    const-string v3, "RedmagicAlarmClockActivity"

    if-eqz v2, :cond_2

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "alarmBeans getAlarm_time_millis:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " alarmBeans getTime:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isDelay:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " delayTime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "get Alarm time add timeMillis:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    .line 396
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getWeekList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 397
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v9

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v10

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v2

    add-long v12, v2, v0

    move-object v6, p0

    move v11, p1

    .line 396
    invoke-static/range {v6 .. v13}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setPeriodAlarm(Landroid/content/Context;[Ljava/lang/String;IIIZJ)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 400
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v7

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 401
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v9

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_time_millis()J

    move-result-wide v2

    add-long v11, v2, v0

    move-object v6, p0

    move v10, p1

    .line 400
    invoke-static/range {v6 .. v12}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setSingleAlarm(Landroid/content/Context;IIIZJ)V

    goto :goto_1

    .line 403
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->realCancelClock(Landroid/content/Context;I)V

    .line 404
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result p1

    invoke-static {p0, v5, p1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->UpdateSwitch(Landroid/content/Context;ZI)V

    :goto_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 366
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 370
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    .line 371
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->exit()V

    const/4 p0, 0x1

    return p0

    .line 374
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 708
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 711
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 712
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_alarm_drag:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->doActionPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 724
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->doActionPointerDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 721
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->doActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 718
    :cond_4
    invoke-direct {p0, p1, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->doActionUp(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 715
    :cond_5
    invoke-direct {p0, p1, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->doActionDown(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 732
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 1

    .line 644
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    const/4 v0, 0x1

    .line 645
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 0

    .line 437
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 432
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 698
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 699
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 702
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public initVoiceTextGravity()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTvVoice:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 598
    new-instance v1, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;-><init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isSmallHeightDisplay()Z
    .locals 1

    .line 818
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_alarm_drag:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 819
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->repeat_ten_minute_main:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 380
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->RepeatAlarm(Z)V

    .line 381
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->exit()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 350
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 351
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 352
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initOrientationn(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 195
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    const-string p1, "alarmclock"

    sput-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 197
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->sendOnAlarmClockLaunchChanged(Z)V

    .line 198
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "alarm_beans"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->alarmBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 207
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 208
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cn.nubia.deskclock.preset"

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "zte.com.cn.alarmclock"

    :goto_1
    const-string/jumbo v1, "zte.com.cn.alarmclock.MessengerService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->alarm_redmagic_layout:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->setContentView(I)V

    .line 213
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initView()V

    .line 215
    new-instance p1, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {p1, p0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 216
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->unityView:Landroid/view/ViewGroup;

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 219
    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mVibrator:Landroid/os/Vibrator;

    .line 221
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->addWindowFlags()V

    .line 222
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->hideNavigationBar()V

    .line 224
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$PowerKeyBroadcastReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$PowerKeyBroadcastReceiver;-><init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mPowerKeyBroadcastReceiver:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$PowerKeyBroadcastReceiver;

    const/4 v1, 0x2

    .line 226
    invoke-virtual {p0, v0, p1, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 227
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 271
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 273
    :try_start_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->sendOnAlarmClockLaunchChanged(Z)V

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mPowerKeyBroadcastReceiver:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$PowerKeyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->destroy(Lcom/unity3d/player/UnityPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :goto_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 333
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onLowMemory()V

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 255
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 256
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->setIntent(Landroid/content/Intent;)V

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    .line 263
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initView()V

    .line 264
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->switchScene()V

    .line 265
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->onSceneLoaded()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    .line 290
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 293
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mImgHintSlide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 294
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 295
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 302
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 304
    iget-wide v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTrackEventDurationStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mTrackEventDurationStartTime:J

    .line 307
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mExitRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 309
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isSceneLoaded:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mAlarmBootView:Landroid/view/View;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->fadeOut(Landroid/view/View;J)V

    :cond_1
    const/4 v0, 0x1

    .line 313
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->setShowWhenLocked(Z)V

    .line 315
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mImgHintSlide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 316
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_2

    .line 317
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 873
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 875
    const-string p0, "android:support:fragments"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 876
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 879
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 881
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 323
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    .line 325
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->releaseResource()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 340
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 343
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 359
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method
