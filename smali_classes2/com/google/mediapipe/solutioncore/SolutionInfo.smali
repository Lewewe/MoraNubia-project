.class public abstract Lcom/google/mediapipe/solutioncore/SolutionInfo;
.super Ljava/lang/Object;
.source "SolutionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .locals 1

    .line 32
    new-instance v0, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/solutioncore/AutoValue_SolutionInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract binaryGraphPath()Ljava/lang/String;
.end method

.method public abstract imageInputStreamName()Ljava/lang/String;
.end method

.method public abstract outputStreamNames()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract staticImageMode()Z
.end method
