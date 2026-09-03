.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBoxOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 531
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeight()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public clearWidth()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 638
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public clearXmin()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 567
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public clearYmin()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getHeight()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getWidth()I

    move-result p0

    return p0
.end method

.method public getXmin()I
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getXmin()I

    move-result p0

    return p0
.end method

.method public getYmin()I
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getYmin()I

    move-result p0

    return p0
.end method

.method public hasHeight()Z
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasHeight()Z

    move-result p0

    return p0
.end method

.method public hasWidth()Z
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasWidth()Z

    move-result p0

    return p0
.end method

.method public hasXmin()Z
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasXmin()Z

    move-result p0

    return p0
.end method

.method public hasYmin()Z
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasYmin()Z

    move-result p0

    return p0
.end method

.method public setHeight(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method

.method public setWidth(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 630
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method

.method public setXmin(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method

.method public setYmin(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method
