.class public Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;
.super Ljava/lang/Object;
.source "ZTETimer.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/ZTETimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicThreadFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;
    }
.end annotation


# instance fields
.field private final daemonFlag:Ljava/lang/Boolean;

.field private final namingPattern:Ljava/lang/String;

.field private final priority:Ljava/lang/Integer;

.field private final threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->access$000(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->access$000(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    .line 184
    :goto_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->access$100(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->namingPattern:Ljava/lang/String;

    .line 185
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->access$200(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->priority:Ljava/lang/Integer;

    .line 186
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->access$300(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->daemonFlag:Ljava/lang/Boolean;

    .line 187
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->access$400(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 189
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;Lcn/nubia/redmagickyi/util/ZTETimer$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;-><init>(Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;)V

    return-void
.end method

.method private initializeThread(Ljava/lang/Thread;)V
    .locals 3

    .line 280
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getNamingPattern()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getNamingPattern()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getPriority()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 295
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 298
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getDaemonFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 299
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getDaemonFlag()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final getDaemonFlag()Ljava/lang/Boolean;
    .locals 0

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getNamingPattern()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriority()Ljava/lang/Integer;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public getThreadCount()J
    .locals 2

    .line 254
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 243
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public final getWrappedFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->getWrappedFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 267
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;->initializeThread(Ljava/lang/Thread;)V

    return-object p1
.end method
