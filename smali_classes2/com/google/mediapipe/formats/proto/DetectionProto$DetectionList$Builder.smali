.class public final Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DetectionProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2739
    invoke-static {}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4500()Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/DetectionProto$1;)V
    .locals 0

    .line 2732
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDetection(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;"
        }
    .end annotation

    .line 2824
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2825
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4900(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 2814
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2815
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    .line 2816
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2815
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4800(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public addDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2796
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2797
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4800(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public addDetection(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2805
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2806
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4700(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public addDetection(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2787
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2788
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4700(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearDetection()Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1

    .line 2832
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2833
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$5000(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;)V

    return-object p0
.end method

.method public getDetection(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2762
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->getDetection(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    move-result-object p0

    return-object p0
.end method

.method public getDetectionCount()I
    .locals 0

    .line 2756
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->getDetectionCount()I

    move-result p0

    return p0
.end method

.method public getDetectionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
            ">;"
        }
    .end annotation

    .line 2748
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    .line 2749
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->getDetectionList()Ljava/util/List;

    move-result-object p0

    .line 2748
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeDetection(I)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2840
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2841
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$5100(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;I)V

    return-object p0
.end method

.method public setDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 2778
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2779
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    .line 2780
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2779
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4600(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public setDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2769
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->copyOnWrite()V

    .line 2770
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->access$4600(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method
