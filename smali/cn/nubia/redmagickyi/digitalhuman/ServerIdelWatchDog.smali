.class public Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;
.super Ljava/lang/Object;
.source "ServerIdelWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;

.field private runnable:Ljava/lang/Runnable;

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->runnable:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->callback:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;

    .line 17
    new-instance p1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->callback:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;

    return-object p0
.end method

.method private isEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public startIdelCountdown()V
    .locals 4

    .line 21
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->stopIdelCountdown()V

    .line 23
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/ZTETimer;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public stopIdelCountdown()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    :cond_0
    return-void
.end method
