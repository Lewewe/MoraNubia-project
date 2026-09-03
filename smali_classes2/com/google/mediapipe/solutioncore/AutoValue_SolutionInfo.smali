.class final Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;
.super Lcom/google/mediapipe/solutioncore/SolutionInfo;
.source "AutoValue_SolutionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;
    }
.end annotation


# instance fields
.field private final binaryGraphPath:Ljava/lang/String;

.field private final imageInputStreamName:Ljava/lang/String;

.field private final outputStreamNames:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final staticImageMode:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "binaryGraphPath",
            "imageInputStreamName",
            "outputStreamNames",
            "staticImageMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/mediapipe/solutioncore/SolutionInfo;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->binaryGraphPath:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->imageInputStreamName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    .line 24
    iput-boolean p4, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->staticImageMode:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;ZLcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    return-void
.end method


# virtual methods
.method public binaryGraphPath()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->binaryGraphPath:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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

    .line 62
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/solutioncore/SolutionInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 63
    check-cast p1, Lcom/google/mediapipe/solutioncore/SolutionInfo;

    .line 64
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->binaryGraphPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->binaryGraphPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->imageInputStreamName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->imageInputStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    .line 66
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->outputStreamNames()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->staticImageMode:Z

    .line 67
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->staticImageMode()Z

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->binaryGraphPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 78
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->imageInputStreamName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 80
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 82
    iget-boolean p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->staticImageMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public imageInputStreamName()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->imageInputStreamName:Ljava/lang/String;

    return-object p0
.end method

.method public outputStreamNames()Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public staticImageMode()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->staticImageMode:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SolutionInfo{binaryGraphPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->binaryGraphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageInputStreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->imageInputStreamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStreamNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", staticImageMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;->staticImageMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
