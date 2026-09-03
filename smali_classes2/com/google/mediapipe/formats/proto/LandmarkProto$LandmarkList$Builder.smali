.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1000
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1200()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V
    .locals 0

    .line 993
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLandmark(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;"
        }
    .end annotation

    .line 1085
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1600(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1075
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1076
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1077
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 1076
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1057
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1058
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1066
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1048
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1049
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public clearLandmark()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1094
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1700(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1023
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object p0

    return-object p0
.end method

.method public getLandmarkCount()I
    .locals 0

    .line 1017
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkCount()I

    move-result p0

    return p0
.end method

.method public getLandmarkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1010
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object p0

    .line 1009
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1101
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1102
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1800(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;I)V

    return-object p0
.end method

.method public setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1039
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1041
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 1040
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1030
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1031
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method
