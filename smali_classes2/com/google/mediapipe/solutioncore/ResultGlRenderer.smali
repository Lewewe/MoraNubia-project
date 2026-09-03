.class public interface abstract Lcom/google/mediapipe/solutioncore/ResultGlRenderer;
.super Ljava/lang/Object;
.source "ResultGlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/mediapipe/solutioncore/ImageSolutionResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract renderResult(Lcom/google/mediapipe/solutioncore/ImageSolutionResult;[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "projectionMatrix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[F)V"
        }
    .end annotation
.end method

.method public abstract setupRendering()V
.end method
