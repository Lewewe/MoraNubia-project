.class final Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;
.super Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;
.source "AutoValue_SolutionStatsLogger_StatsSnapshot.java"


# instance fields
.field private final cpuInputCount:I

.field private final droppedCount:I

.field private final elapsedTimeMs:J

.field private final finishedCount:I

.field private final gpuInputCount:I

.field private final peakLatencyMs:J

.field private final totalLatencyMs:J


# direct methods
.method constructor <init>(IIIIJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cpuInputCount",
            "gpuInputCount",
            "finishedCount",
            "droppedCount",
            "totalLatencyMs",
            "peakLatencyMs",
            "elapsedTimeMs"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->cpuInputCount:I

    .line 29
    iput p2, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->gpuInputCount:I

    .line 30
    iput p3, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->finishedCount:I

    .line 31
    iput p4, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->droppedCount:I

    .line 32
    iput-wide p5, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->totalLatencyMs:J

    .line 33
    iput-wide p7, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->peakLatencyMs:J

    .line 34
    iput-wide p9, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->elapsedTimeMs:J

    return-void
.end method


# virtual methods
.method cpuInputCount()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->cpuInputCount:I

    return p0
.end method

.method droppedCount()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->droppedCount:I

    return p0
.end method

.method elapsedTimeMs()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->elapsedTimeMs:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 90
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 91
    check-cast p1, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;

    .line 92
    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->cpuInputCount:I

    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->cpuInputCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->gpuInputCount:I

    .line 93
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->gpuInputCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->finishedCount:I

    .line 94
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->finishedCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->droppedCount:I

    .line 95
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->droppedCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->totalLatencyMs:J

    .line 96
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->totalLatencyMs()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->peakLatencyMs:J

    .line 97
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->peakLatencyMs()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->elapsedTimeMs:J

    .line 98
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger$StatsSnapshot;->elapsedTimeMs()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method finishedCount()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->finishedCount:I

    return p0
.end method

.method gpuInputCount()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->gpuInputCount:I

    return p0
.end method

.method public hashCode()I
    .locals 7

    .line 107
    iget v0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->cpuInputCount:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 109
    iget v2, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->gpuInputCount:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 111
    iget v2, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->finishedCount:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 113
    iget v2, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->droppedCount:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 115
    iget-wide v2, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->totalLatencyMs:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 117
    iget-wide v2, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->peakLatencyMs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 119
    iget-wide v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->elapsedTimeMs:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method peakLatencyMs()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->peakLatencyMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatsSnapshot{cpuInputCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->cpuInputCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gpuInputCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->gpuInputCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finishedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->finishedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", droppedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->droppedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalLatencyMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->totalLatencyMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peakLatencyMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->peakLatencyMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->elapsedTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method totalLatencyMs()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/google/mediapipe/solutioncore/logging/AutoValue_SolutionStatsLogger_StatsSnapshot;->totalLatencyMs:J

    return-wide v0
.end method
