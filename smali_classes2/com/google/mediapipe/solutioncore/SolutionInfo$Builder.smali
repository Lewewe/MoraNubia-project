.class public abstract Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
.super Ljava/lang/Object;
.source "SolutionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/solutioncore/SolutionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/mediapipe/solutioncore/SolutionInfo;
.end method

.method public abstract setBinaryGraphPath(Ljava/lang/String;)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setImageInputStreamName(Ljava/lang/String;)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setOutputStreamNames(Lcom/google/common/collect/ImmutableList;)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
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
.end method

.method public abstract setStaticImageMode(Z)Lcom/google/mediapipe/solutioncore/SolutionInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
