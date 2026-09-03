.class public Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;
.super Ljava/lang/Object;
.source "AlarmClockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeRunnable"
.end annotation


# static fields
.field private static final DELAY_NEXT_INCREASE:I = 0xf

.field private static final MAX_VOLUMN:I = 0x64


# instance fields
.field private alarmVolumMax:I

.field private alarmVolumn:I

.field private counter:Lcn/nubia/redmagickyi/util/Counter;

.field private mBgmVolume:F

.field private mHandlerThatWillIncreaseVolume:Landroid/os/Handler;

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 900
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 895
    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->mBgmVolume:F

    .line 901
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->mHandlerThatWillIncreaseVolume:Landroid/os/Handler;

    .line 902
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x4

    .line 903
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->alarmVolumMax:I

    const/4 v0, 0x1

    .line 904
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->alarmVolumn:I

    .line 905
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "run: mBgmVolume "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->mBgmVolume:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", alarmVolumn = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->alarmVolumn:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", alarmVolumMax = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->alarmVolumMax:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmClockActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 891
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->counter:Lcn/nubia/redmagickyi/util/Counter;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;)F
    .locals 0

    .line 891
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->mBgmVolume:F

    return p0
.end method

.method static synthetic access$1602(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;F)F
    .locals 0

    .line 891
    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->mBgmVolume:F

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 918
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 931
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->alarmVolumn:I

    mul-int/lit16 v1, v1, 0xdac

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->alarmVolumMax:I

    div-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x5dc

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setRate(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeRunnable;->counter:Lcn/nubia/redmagickyi/util/Counter;

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
