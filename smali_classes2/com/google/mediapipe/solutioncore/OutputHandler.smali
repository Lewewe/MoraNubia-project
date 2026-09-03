.class public Lcom/google/mediapipe/solutioncore/OutputHandler;
.super Ljava/lang/Object;
.source "OutputHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/mediapipe/solutioncore/SolutionResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputHandler"


# instance fields
.field private customErrorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;

.field private customResultListener:Lcom/google/mediapipe/solutioncore/ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/solutioncore/ResultListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private handleTimestampBoundChanges:Z

.field private outputConverter:Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->handleTimestampBoundChanges:Z

    return-void
.end method


# virtual methods
.method public handleTimestampBoundChanges()Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->handleTimestampBoundChanges:Z

    return p0
.end method

.method public run(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->outputConverter:Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter;

    invoke-interface {v1, p1}, Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter;->convert(Ljava/util/List;)Lcom/google/mediapipe/solutioncore/SolutionResult;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;->recordInvocationEnd(J)V

    .line 99
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->customResultListener:Lcom/google/mediapipe/solutioncore/ResultListener;

    invoke-interface {p1, v0}, Lcom/google/mediapipe/solutioncore/ResultListener;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    instance-of p0, v0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;

    if-eqz p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 101
    :try_start_1
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->customErrorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Error occurs when getting MediaPipe solution result. "

    if-eqz p0, :cond_0

    .line 102
    :try_start_2
    invoke-interface {p0, v1, p1}, Lcom/google/mediapipe/solutioncore/ErrorListener;->onError(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 104
    :cond_0
    const-string p0, "OutputHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :goto_0
    instance-of p0, v0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;

    if-eqz p0, :cond_1

    .line 108
    :goto_1
    check-cast v0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;

    .line 109
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->clearImagePackets()V

    :cond_1
    return-void

    .line 107
    :goto_2
    instance-of p1, v0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;

    if-eqz p1, :cond_2

    .line 108
    check-cast v0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;

    .line 109
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->clearImagePackets()V

    .line 111
    :cond_2
    throw p0
.end method

.method public setErrorListener(Lcom/google/mediapipe/solutioncore/ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->customErrorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;

    return-void
.end method

.method public setHandleTimestampBoundChanges(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handleTimestampBoundChanges"
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->handleTimestampBoundChanges:Z

    return-void
.end method

.method public setOutputConverter(Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->outputConverter:Lcom/google/mediapipe/solutioncore/OutputHandler$OutputConverter;

    return-void
.end method

.method public setResultListener(Lcom/google/mediapipe/solutioncore/ResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/solutioncore/ResultListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->customResultListener:Lcom/google/mediapipe/solutioncore/ResultListener;

    return-void
.end method

.method public setStatsLogger(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsLogger"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/OutputHandler;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    return-void
.end method
