.class public interface abstract Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;
.super Ljava/lang/Object;
.source "SolutionStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;
    }
.end annotation


# virtual methods
.method public abstract logInitError()V
.end method

.method public abstract logInvocationReport(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation
.end method

.method public abstract logSessionEnd()V
.end method

.method public abstract logSessionStart()V
.end method

.method public abstract logUnsupportedInputError()V
.end method

.method public abstract logUnsupportedOutputError()V
.end method

.method public abstract recordCpuInputArrival(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation
.end method

.method public abstract recordGpuInputArrival(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation
.end method

.method public abstract recordInvocationEnd(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetTimestamp"
        }
    .end annotation
.end method
