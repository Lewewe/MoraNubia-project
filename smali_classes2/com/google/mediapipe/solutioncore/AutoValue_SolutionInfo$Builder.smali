.class final Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;
.super Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
.source "AutoValue_SolutionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private binaryGraphPath:Ljava/lang/String;

.field private imageInputStreamName:Ljava/lang/String;

.field private outputStreamNames:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private staticImageMode:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/solutioncore/SolutionInfo;
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->binaryGraphPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const-string v0, " binaryGraphPath"

    goto :goto_0

    .line 125
    :cond_0
    const-string v0, ""

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->imageInputStreamName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imageInputStreamName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_2

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outputStreamNames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->staticImageMode:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " staticImageMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    new-instance v0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;

    iget-object v3, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->binaryGraphPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->imageInputStreamName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->staticImageMode:Ljava/lang/Boolean;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;ZLcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$1;)V

    return-object v0

    .line 138
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing required properties:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBinaryGraphPath(Ljava/lang/String;)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binaryGraphPath"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->binaryGraphPath:Ljava/lang/String;

    return-object p0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null binaryGraphPath"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setImageInputStreamName(Ljava/lang/String;)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageInputStreamName"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->imageInputStreamName:Ljava/lang/String;

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null imageInputStreamName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOutputStreamNames(Lcom/google/common/collect/ImmutableList;)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputStreamNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->outputStreamNames:Lcom/google/common/collect/ImmutableList;

    return-object p0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null outputStreamNames"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStaticImageMode(Z)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticImageMode"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;->staticImageMode:Ljava/lang/Boolean;

    return-object p0
.end method
