.class public final Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClassificationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 471
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$000()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/ClassificationProto$1;)V
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDisplayName()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 721
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$900(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public clearIndex()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$200(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public clearLabel()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$600(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public clearScore()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 575
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$400(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getIndex()I

    move-result p0

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getScore()F
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getScore()F

    move-result p0

    return p0
.end method

.method public hasDisplayName()Z
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasDisplayName()Z

    move-result p0

    return p0
.end method

.method public hasIndex()Z
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasIndex()Z

    move-result p0

    return p0
.end method

.method public hasLabel()Z
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasLabel()Z

    move-result p0

    return p0
.end method

.method public hasScore()Z
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasScore()Z

    move-result p0

    return p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$800(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$1000(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIndex(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$100(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;I)V

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$500(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 656
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$700(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setScore(F)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 562
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$300(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;F)V

    return-object p0
.end method
