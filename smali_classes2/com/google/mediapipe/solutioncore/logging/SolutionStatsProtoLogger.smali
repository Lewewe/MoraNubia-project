.class public Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;
.super Ljava/lang/Object;
.source "SolutionStatsProtoLogger.java"

# interfaces
.implements Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;


# static fields
.field private static final LATENCY_TIMEOUT_THRESHOLD_MS:Ljava/lang/Long;

.field private static final REPORT_INTERVAL_MS:Ljava/lang/Long;

.field private static final SOLUTION_NAME_PREFIX:Ljava/lang/String; = "SOLUTION_"

.field private static final TAG:Ljava/lang/String; = "SolutionStatsProtoLogger"


# instance fields
.field private final cpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final droppedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final finishedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final gpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final latestPeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lifetimePeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final loggingClient:Lcom/google/mediapipe/solutioncore/logging/LoggingClient;

.field private reportStartTimeMs:J

.field private final solutionInfo:Lcom/google/mediapipe/solutioncore/SolutionInfo;

.field private final solutionInitTimeMs:J

.field private final solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

.field private final startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

.field private final systemInfo:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

.field private final totalLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7530

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->REPORT_INTERVAL_MS:Ljava/lang/Long;

    const-wide/16 v0, 0xbb8

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->LATENCY_TIMEOUT_THRESHOLD_MS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/mediapipe/solutioncore/SolutionInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "solutionNameStr",
            "solutionInfo"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->cpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->gpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->finishedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->droppedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->totalLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->latestPeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->lifetimePeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 88
    new-instance v0, Lcom/google/mediapipe/solutioncore/logging/RemoteLoggingClient;

    invoke-direct {v0, p1}, Lcom/google/mediapipe/solutioncore/logging/RemoteLoggingClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->loggingClient:Lcom/google/mediapipe/solutioncore/logging/LoggingClient;

    .line 89
    iput-object p3, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionInfo:Lcom/google/mediapipe/solutioncore/SolutionInfo;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionInitTimeMs:J

    .line 91
    const-class p3, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SOLUTION_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {p2}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-static {p3, p2}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p2

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->SOLUTION_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 94
    invoke-virtual {p2, p3}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    iput-object p2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 99
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Exception thrown when trying to get app version "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SolutionStatsProtoLogger"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ""

    .line 104
    :goto_0
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;

    move-result-object p3

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;->PLATFORM_ANDROID:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;

    .line 105
    invoke-virtual {p3, v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->setPlatform(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;

    move-result-object p3

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->setAppVersion(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->systemInfo:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-void
.end method

.method private logSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 322
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->systemInfo:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 323
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->setSystemInfo(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->setSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    .line 326
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->loggingClient:Lcom/google/mediapipe/solutioncore/logging/LoggingClient;

    invoke-interface {p0, p1}, Lcom/google/mediapipe/solutioncore/logging/LoggingClient;->logEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;)V

    return-void
.end method

.method private produceInvocationReport(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation

    .line 220
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object v0

    .line 222
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionInfo:Lcom/google/mediapipe/solutioncore/SolutionInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->staticImageMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 223
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_STATIC_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    goto :goto_0

    .line 224
    :cond_0
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 221
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->setMode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object p0

    .line 225
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->droppedCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->setDropped(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object p0

    .line 226
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->peakLatencyMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->setPipelinePeakLatencyMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object p0

    .line 227
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->totalLatencyMs()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->finishedCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->setPipelineAverageLatencyMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object p0

    .line 228
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->elapsedTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->setElapsedTimeMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object p0

    .line 229
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->cpuInputCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_CPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->setInputDataType(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->cpuInputCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->setCount(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    .line 230
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->addInvocationCount(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->gpuInputCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_GPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->setInputDataType(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->gpuInputCount()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->setCount(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->addInvocationCount(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method


# virtual methods
.method public logInitError()V
    .locals 3

    .line 286
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_ERROR:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 289
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;->ERROR_INIT:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->setErrorCode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 291
    invoke-direct {p0, v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->logSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-void
.end method

.method public logInvocationReport(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 251
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_INVOCATONS:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    .line 252
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 253
    invoke-direct {p0, p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->produceInvocationReport(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 255
    invoke-direct {p0, p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->logSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-void
.end method

.method public logSessionEnd()V
    .locals 15

    .line 262
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 263
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_END:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 266
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->cpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 270
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->gpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 271
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->finishedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 272
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->droppedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 273
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v6, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->totalLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 274
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->lifetimePeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 275
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionInitTimeMs:J

    sub-long/2addr v11, v13

    .line 269
    invoke-static/range {v3 .. v12}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->create(IIIIJJJ)Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    move-result-object v2

    .line 268
    invoke-direct {p0, v2}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->produceInvocationReport(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;->setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    .line 265
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 279
    invoke-direct {p0, v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->logSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-void
.end method

.method public logSessionStart()V
    .locals 6

    .line 115
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_START:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionInfo:Lcom/google/mediapipe/solutioncore/SolutionInfo;

    invoke-virtual {v2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->staticImageMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    sget-object v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_STATIC_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    goto :goto_0

    .line 123
    :cond_0
    sget-object v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 120
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;->setMode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionInfo:Lcom/google/mediapipe/solutioncore/SolutionInfo;

    .line 124
    invoke-virtual {v2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->binaryGraphPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;->setGraphName(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    move-result-object v1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionInitTimeMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;->setInitLatencyMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 128
    invoke-direct {p0, v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->logSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->reportStartTimeMs:J

    .line 130
    invoke-static {}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->createDefault()Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    return-void
.end method

.method public logUnsupportedInputError()V
    .locals 3

    .line 298
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 299
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_ERROR:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    .line 300
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;->ERROR_UNSUPPORTED_INPUT:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->setErrorCode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    .line 301
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 304
    invoke-direct {p0, v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->logSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-void
.end method

.method public logUnsupportedOutputError()V
    .locals 3

    .line 311
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->solutionName:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    .line 312
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_ERROR:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 315
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;->ERROR_UNSUPPORTED_INPUT:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->setErrorCode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 317
    invoke-direct {p0, v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->logSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-void
.end method

.method public recordCpuInputArrival(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->cpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 154
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recordGpuInputArrival(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->gpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 142
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recordInvocationEnd(J)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 169
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->finishedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 173
    sget-object v2, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->LATENCY_TIMEOUT_THRESHOLD_MS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->totalLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 177
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->latestPeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 178
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->lifetimePeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 180
    invoke-static {}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->createDefault()Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    move-result-object v0

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->reportStartTimeMs:J

    sget-object v5, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->REPORT_INTERVAL_MS:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->droppedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 189
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->startTimeMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 190
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->cpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->gpuInputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->finishedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->droppedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->totalLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 196
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->latestPeakLatencyMs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    .line 197
    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v8, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->reportStartTimeMs:J

    sub-long v8, p1, v8

    .line 191
    invoke-static/range {v0 .. v9}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->create(IIIIJJJ)Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    move-result-object v0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->reportStartTimeMs:J

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 201
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 206
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->cpuInputCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->cpuInputCount()I

    move-result p2

    sub-int v1, p1, p2

    .line 207
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->gpuInputCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->gpuInputCount()I

    move-result p2

    sub-int v2, p1, p2

    .line 208
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->finishedCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->finishedCount()I

    move-result p2

    sub-int v3, p1, p2

    .line 209
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->droppedCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->droppedCount()I

    move-result p2

    sub-int v4, p1, p2

    .line 210
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->totalLatencyMs()J

    move-result-wide p1

    iget-object v5, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    invoke-virtual {v5}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->totalLatencyMs()J

    move-result-wide v5

    sub-long v5, p1, v5

    .line 211
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->peakLatencyMs()J

    move-result-wide v7

    .line 212
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->elapsedTimeMs()J

    move-result-wide v9

    .line 205
    invoke-static/range {v1 .. v10}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->create(IIIIJJJ)Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->logInvocationReport(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;)V

    .line 214
    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;->statsSnapshot:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 201
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
