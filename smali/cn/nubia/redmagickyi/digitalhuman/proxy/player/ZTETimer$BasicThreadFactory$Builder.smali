.class public Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;
.super Ljava/lang/Object;
.source "Counter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private daemonFlag:Ljava/lang/Boolean;

.field private exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private namingPattern:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 723
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/String;
    .locals 0

    .line 723
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 723
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 723
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 723
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method


# virtual methods
.method public build()Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory;
    .locals 2

    .line 838
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$1;)V

    .line 839
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->reset()V

    return-object v0
.end method

.method public daemon(Z)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;
    .locals 0

    .line 783
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public namingPattern(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 770
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0

    .line 767
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Naming pattern must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public priority(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;
    .locals 0

    .line 794
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 823
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    .line 824
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 825
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    .line 826
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    .line 827
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public uncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 812
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0

    .line 809
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Uncaught exception handler must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public wrappedFactory(Ljava/util/concurrent/ThreadFactory;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 754
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/ZTETimer$BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0

    .line 751
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Wrapped ThreadFactory must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
