.class public final Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DetectionProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 494
    invoke-static {}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->access$000()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/DetectionProto$1;)V
    .locals 0

    .line 487
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConfidence()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->access$400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public clearId()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->copyOnWrite()V

    .line 530
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->access$200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public getConfidence()F
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->getConfidence()F

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->getId()I

    move-result p0

    return p0
.end method

.method public hasConfidence()Z
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->hasConfidence()Z

    move-result p0

    return p0
.end method

.method public hasId()Z
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->hasId()Z

    move-result p0

    return p0
.end method

.method public setConfidence(F)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->access$300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;F)V

    return-object p0
.end method

.method public setId(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->access$100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;I)V

    return-object p0
.end method
