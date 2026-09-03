.class public final Lcom/google/common/flogger/backend/system/SystemClock;
.super Lcom/google/common/flogger/backend/system/Clock;
.source "SystemClock.java"


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/backend/system/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/common/flogger/backend/system/SystemClock;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/system/SystemClock;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/system/SystemClock;->INSTANCE:Lcom/google/common/flogger/backend/system/SystemClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/common/flogger/backend/system/Clock;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/backend/system/SystemClock;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/common/flogger/backend/system/SystemClock;->INSTANCE:Lcom/google/common/flogger/backend/system/SystemClock;

    return-object v0
.end method


# virtual methods
.method public getCurrentTimeNanos()J
    .locals 2

    .line 38
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 43
    const-string p0, "Default millisecond precision clock"

    return-object p0
.end method
