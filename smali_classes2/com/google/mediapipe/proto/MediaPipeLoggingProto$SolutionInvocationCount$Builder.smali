.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2599
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->access$4000()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V
    .locals 0

    .line 2592
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCount()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;
    .locals 1

    .line 2702
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->copyOnWrite()V

    .line 2703
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->access$4400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public clearInputDataType()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;
    .locals 1

    .line 2650
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->copyOnWrite()V

    .line 2651
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->access$4200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public getCount()J
    .locals 2

    .line 2677
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputDataType()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;
    .locals 0

    .line 2625
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->getInputDataType()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    move-result-object p0

    return-object p0
.end method

.method public hasCount()Z
    .locals 0

    .line 2665
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->hasCount()Z

    move-result p0

    return p0
.end method

.method public hasInputDataType()Z
    .locals 0

    .line 2613
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->hasInputDataType()Z

    move-result p0

    return p0
.end method

.method public setCount(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2689
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->copyOnWrite()V

    .line 2690
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->access$4300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;J)V

    return-object p0
.end method

.method public setInputDataType(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2637
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->copyOnWrite()V

    .line 2638
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;->access$4100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;)V

    return-object p0
.end method
