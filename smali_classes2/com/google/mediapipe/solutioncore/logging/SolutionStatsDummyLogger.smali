.class public Lcom/google/mediapipe/solutioncore/logging/SolutionStatsDummyLogger;
.super Ljava/lang/Object;
.source "SolutionStatsDummyLogger.java"

# interfaces
.implements Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/mediapipe/solutioncore/SolutionInfo;)V
    .locals 0
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logInitError()V
    .locals 0

    return-void
.end method

.method public logInvocationReport(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation

    return-void
.end method

.method public logSessionEnd()V
    .locals 0

    return-void
.end method

.method public logSessionStart()V
    .locals 0

    return-void
.end method

.method public logUnsupportedInputError()V
    .locals 0

    return-void
.end method

.method public logUnsupportedOutputError()V
    .locals 0

    return-void
.end method

.method public recordCpuInputArrival(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation

    return-void
.end method

.method public recordGpuInputArrival(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation

    return-void
.end method

.method public recordInvocationEnd(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation

    return-void
.end method
