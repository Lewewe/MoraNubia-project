.class public Lcn/nubia/redmagickyi/util/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;,
        Lcn/nubia/redmagickyi/util/Counter$RepeatMode;
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

.field private onCounterEventListener:Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;

.field private postToMainThread:Z

.field private rate:J

.field private repeateMode:I

.field private to:F

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/Counter;->isRunning:Z

    const-wide/16 v0, 0x5

    .line 31
    iput-wide v0, p0, Lcn/nubia/redmagickyi/util/Counter;->rate:J

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/util/Counter;->repeateMode:I

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread:Z

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/Counter;->onCounterEventListener:Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/Counter;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/Counter;->isRunning:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/Counter;)F
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/redmagickyi/util/Counter;->from:F

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/Counter;FZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Counter;->onCounterValueChanged(FZ)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/util/Counter;)I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/redmagickyi/util/Counter;->repeateMode:I

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/util/Counter;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcn/nubia/redmagickyi/util/Counter;->duration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/util/Counter;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcn/nubia/redmagickyi/util/Counter;->delayedStop:J

    return-wide v0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/util/Counter;)F
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/redmagickyi/util/Counter;->to:F

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/util/Counter;F)F
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/Counter;->trim(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/util/Counter;)Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Counter;->onCounterEventListener:Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;

    return-object p0
.end method

.method private onCounterValueChanged(FZ)V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/Counter;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/util/Counter$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/util/Counter$2;-><init>(Lcn/nubia/redmagickyi/util/Counter;FZ)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Counter;->onCounterEventListener:Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;->onCounterValueChanged(FZ)V

    :goto_0
    return-void
.end method

.method private trim(F)F
    .locals 0

    .line 193
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Counter;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/Counter;->isRunning:Z

    .line 175
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Counter;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    :cond_0
    return-void
.end method

.method public getFrom()F
    .locals 0

    .line 189
    iget p0, p0, Lcn/nubia/redmagickyi/util/Counter;->from:F

    return p0
.end method

.method public getTo()F
    .locals 0

    .line 185
    iget p0, p0, Lcn/nubia/redmagickyi/util/Counter;->to:F

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/Counter;->isRunning:Z

    return p0
.end method

.method public varargs ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;
    .locals 4

    const/4 v0, 0x0

    .line 49
    aget v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    aget p1, p1, v3

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v2

    if-gtz v1, :cond_0

    .line 52
    iput v0, p0, Lcn/nubia/redmagickyi/util/Counter;->from:F

    .line 53
    iput p1, p0, Lcn/nubia/redmagickyi/util/Counter;->to:F

    return-object p0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "the values in ofFloat must between 0f to 1f"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread:Z

    return-object p0
.end method

.method public setDelayedStart(J)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 73
    iput-wide p1, p0, Lcn/nubia/redmagickyi/util/Counter;->delayedStart:J

    return-object p0
.end method

.method public setDelayedStop(J)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 78
    iput-wide p1, p0, Lcn/nubia/redmagickyi/util/Counter;->delayedStop:J

    return-object p0
.end method

.method public setDuration(J)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 58
    iput-wide p1, p0, Lcn/nubia/redmagickyi/util/Counter;->duration:J

    return-object p0
.end method

.method public setForever(I)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 68
    iput p1, p0, Lcn/nubia/redmagickyi/util/Counter;->repeateMode:I

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/Counter;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setRate(J)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 83
    iput-wide p1, p0, Lcn/nubia/redmagickyi/util/Counter;->rate:J

    return-object p0
.end method

.method public setRepeateMode(I)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 88
    iput p1, p0, Lcn/nubia/redmagickyi/util/Counter;->repeateMode:I

    return-object p0
.end method

.method public start()Lcn/nubia/redmagickyi/util/Counter;
    .locals 8

    .line 98
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/Counter;->isRunning:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/Counter;->isRunning:Z

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/Counter;->interpolator:Landroid/view/animation/Interpolator;

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/Counter;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 106
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/Counter;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    new-instance v2, Lcn/nubia/redmagickyi/util/Counter$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/util/Counter$1;-><init>(Lcn/nubia/redmagickyi/util/Counter;)V

    iget-wide v3, p0, Lcn/nubia/redmagickyi/util/Counter;->delayedStart:J

    iget-wide v5, p0, Lcn/nubia/redmagickyi/util/Counter;->rate:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    :cond_2
    return-object p0
.end method
