.class public final Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 504
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$000()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 578
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$200(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 801
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$900(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public clearType()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 688
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$500(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasOptions()Z
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->hasOptions()Z

    move-result p0

    return p0
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$800(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$100(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$300(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$700(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 756
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$700(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$400(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$600(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
