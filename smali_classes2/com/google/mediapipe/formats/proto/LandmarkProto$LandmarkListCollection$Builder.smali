.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1403
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2000()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V
    .locals 0

    .line 1396
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLandmarkList(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;"
        }
    .end annotation

    .line 1488
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1489
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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

    .line 1478
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1479
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1480
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1479
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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

    .line 1460
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1461
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addLandmarkList(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1469
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1470
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2200(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addLandmarkList(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1451
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1452
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2200(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public clearLandmarkList()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1497
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;)V

    return-object p0
.end method

.method public getLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1426
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->getLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p0

    return-object p0
.end method

.method public getLandmarkListCount()I
    .locals 0

    .line 1420
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->getLandmarkListCount()I

    move-result p0

    return p0
.end method

.method public getLandmarkListList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1413
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->getLandmarkListList()Ljava/util/List;

    move-result-object p0

    .line 1412
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1504
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1505
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2600(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;I)V

    return-object p0
.end method

.method public setLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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

    .line 1442
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1443
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1444
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1443
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2100(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public setLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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

    .line 1433
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1434
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2100(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method
