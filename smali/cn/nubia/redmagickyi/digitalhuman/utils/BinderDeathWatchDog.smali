.class public Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;
.super Ljava/lang/Object;
.source "BinderDeathWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;
    }
.end annotation


# instance fields
.field private clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final deathRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->deathRecipients:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public isAllClientsDisconnected()Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBind(Landroid/os/IBinder;)I
    .locals 2

    .line 22
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 25
    :try_start_0
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$ProxyDeathRecipient;-><init>(Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog$1;)V

    .line 26
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->deathRecipients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 28
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 32
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public onRebind()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method public onUnbind()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    return p0
.end method
