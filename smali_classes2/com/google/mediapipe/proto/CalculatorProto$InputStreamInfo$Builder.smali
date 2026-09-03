.class public final Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3145
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->access$4000()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 3138
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBackEdge()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    .locals 1

    .line 3331
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->copyOnWrite()V

    .line 3332
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->access$4500(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public clearTagIndex()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    .locals 1

    .line 3246
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->copyOnWrite()V

    .line 3247
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->access$4200(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public getBackEdge()Z
    .locals 0

    .line 3294
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->getBackEdge()Z

    move-result p0

    return p0
.end method

.method public getTagIndex()Ljava/lang/String;
    .locals 0

    .line 3171
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->getTagIndex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTagIndexBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 3196
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->getTagIndexBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setBackEdge(Z)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3312
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->copyOnWrite()V

    .line 3313
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->access$4400(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;Z)V

    return-object p0
.end method

.method public setTagIndex(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3221
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->copyOnWrite()V

    .line 3222
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->access$4100(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTagIndexBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3273
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->copyOnWrite()V

    .line 3274
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->access$4300(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
