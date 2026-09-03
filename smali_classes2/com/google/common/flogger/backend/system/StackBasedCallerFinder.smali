.class public final Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;
.super Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
.source "StackBasedCallerFinder.java"


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;->INSTANCE:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;->INSTANCE:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-object v0
.end method


# virtual methods
.method public findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lcom/google/common/flogger/LogSite;"
        }
    .end annotation

    .line 54
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    add-int/lit8 p2, p2, 0x1

    .line 55
    invoke-static {p1, p0, p2}, Lcom/google/common/flogger/util/CallerFinder;->findCallerOf(Ljava/lang/Class;Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    new-instance p1, Lcom/google/common/flogger/util/StackBasedLogSite;

    invoke-direct {p1, p0}, Lcom/google/common/flogger/util/StackBasedLogSite;-><init>(Ljava/lang/StackTraceElement;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/common/flogger/LogSite;->INVALID:Lcom/google/common/flogger/LogSite;

    :goto_0
    return-object p1
.end method

.method public findLoggingClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/common/flogger/AbstractLogger<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/google/common/flogger/util/CallerFinder;->findCallerOf(Ljava/lang/Class;Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no caller found on the stack for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 61
    const-string p0, "Default stack-based caller finder"

    return-object p0
.end method
