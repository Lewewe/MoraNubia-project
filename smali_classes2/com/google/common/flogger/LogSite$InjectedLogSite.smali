.class final Lcom/google/common/flogger/LogSite$InjectedLogSite;
.super Lcom/google/common/flogger/LogSite;
.source "LogSite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InjectedLogSite"
.end annotation


# instance fields
.field private final encodedLineNumber:I

.field private hashcode:I

.field private final internalClassName:Ljava/lang/String;

.field private final methodName:Ljava/lang/String;

.field private final sourceFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/google/common/flogger/LogSite;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->hashcode:I

    .line 164
    const-string v0, "class name"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->internalClassName:Ljava/lang/String;

    .line 165
    const-string p1, "method name"

    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->methodName:Ljava/lang/String;

    .line 166
    iput p3, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->encodedLineNumber:I

    .line 167
    iput-object p4, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->sourceFileName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/common/flogger/LogSite$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/flogger/LogSite$InjectedLogSite;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 197
    instance-of v0, p1, Lcom/google/common/flogger/LogSite$InjectedLogSite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lcom/google/common/flogger/LogSite$InjectedLogSite;

    .line 200
    iget-object v0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->internalClassName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/common/flogger/LogSite$InjectedLogSite;->internalClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->methodName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/common/flogger/LogSite$InjectedLogSite;->methodName:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->encodedLineNumber:I

    iget p1, p1, Lcom/google/common/flogger/LogSite$InjectedLogSite;->encodedLineNumber:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 176
    iget-object p0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->internalClassName:Ljava/lang/String;

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->sourceFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 1

    .line 187
    iget p0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->encodedLineNumber:I

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 209
    iget v0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->hashcode:I

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->internalClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1303

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 216
    iget-object v0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 217
    iget v0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->encodedLineNumber:I

    add-int/2addr v1, v0

    .line 218
    iput v1, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->hashcode:I

    .line 220
    :cond_0
    iget p0, p0, Lcom/google/common/flogger/LogSite$InjectedLogSite;->hashcode:I

    return p0
.end method
