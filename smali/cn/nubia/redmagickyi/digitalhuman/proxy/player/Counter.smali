.class Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;,
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$RepeatMode;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2


# instance fields
.field private delayedStart:J

.field private delayedStop:J

.field private duration:J

.field private from:F

.field private interpolator:Landroid/view/animation/Interpolator;

.field private volatile isRunning:Z

.field private onCounterEventListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;

.field private postToMainThread:Z

.field private rate:J

.field private repeateMode:I

.field private to:F

.field private zteTimer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->isRunning:Z

    const-wide/16 v0, 0x5

    .line 48
    iput-wide v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->rate:J

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->repeateMode:I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->postToMainThread:Z

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->onCounterEventListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->isRunning:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)F
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->from:F

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;FZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->onCounterValueChanged(FZ)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->repeateMode:I

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->duration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->delayedStop:J

    return-wide v0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)F
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->to:F

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;F)F
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->trim(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->onCounterEventListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;

    return-object p0
.end method

.method private onCounterValueChanged(FZ)V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->postToMainThread:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$2;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;FZ)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->onCounterEventListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$OnCounterEventListener;->onCounterValueChanged(FZ)V

    :goto_0
    return-void
.end method

.method private trim(F)F
    .locals 0

    .line 202
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->isRunning:Z

    .line 184
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->zteTimer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;->cancel()V

    :cond_0
    return-void
.end method

.method public getFrom()F
    .locals 0

    .line 198
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->from:F

    return p0
.end method

.method public getTo()F
    .locals 0

    .line 194
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->to:F

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->isRunning:Z

    return p0
.end method

.method public varargs ofFloat([F)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 1

    const/4 v0, 0x0

    .line 61
    aget v0, p1, v0

    iput v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->from:F

    const/4 v0, 0x1

    .line 62
    aget p1, p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->to:F

    return-object p0
.end method

.method public postToMainThread(Z)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->postToMainThread:Z

    return-object p0
.end method

.method public setDelayedStart(J)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 82
    iput-wide p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->delayedStart:J

    return-object p0
.end method

.method public setDelayedStop(J)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 87
    iput-wide p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->delayedStop:J

    return-object p0
.end method

.method public setDuration(J)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 67
    iput-wide p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->duration:J

    return-object p0
.end method

.method public setForever(I)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 77
    iput p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->repeateMode:I

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setRate(J)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 92
    iput-wide p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->rate:J

    return-object p0
.end method

.method public setRepeateMode(I)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 0

    .line 97
    iput p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->repeateMode:I

    return-object p0
.end method

.method public start()Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;
    .locals 8

    .line 107
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->isRunning:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->isRunning:Z

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->interpolator:Landroid/view/animation/Interpolator;

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->zteTimer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->zteTimer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;

    .line 115
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->zteTimer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;

    new-instance v2, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;)V

    iget-wide v3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->delayedStart:J

    iget-wide v5, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/Counter;->rate:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    :cond_2
    return-object p0
.end method
