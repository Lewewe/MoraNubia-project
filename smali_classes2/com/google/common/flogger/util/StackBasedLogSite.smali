.class public final Lcom/google/common/flogger/util/StackBasedLogSite;
.super Lcom/google/common/flogger/LogSite;
.source "StackBasedLogSite.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private final stackElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/google/common/flogger/LogSite;-><init>()V

    .line 42
    const-string v0, "stack element"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StackTraceElement;

    iput-object p1, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 68
    instance-of v0, p1, Lcom/google/common/flogger/util/StackBasedLogSite;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    check-cast p1, Lcom/google/common/flogger/util/StackBasedLogSite;

    iget-object p1, p1, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result p0

    return p0
.end method
