.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 450
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$000()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPresence()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1

    .line 693
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 694
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$1000(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public clearVisibility()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$800(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public clearX()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$200(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public clearY()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 522
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$400(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public clearZ()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$600(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public getPresence()F
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getPresence()F

    move-result p0

    return p0
.end method

.method public getVisibility()F
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getVisibility()F

    move-result p0

    return p0
.end method

.method public getX()F
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result p0

    return p0
.end method

.method public getY()F
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getY()F

    move-result p0

    return p0
.end method

.method public getZ()F
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getZ()F

    move-result p0

    return p0
.end method

.method public hasPresence()Z
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->hasPresence()Z

    move-result p0

    return p0
.end method

.method public hasVisibility()Z
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->hasVisibility()Z

    move-result p0

    return p0
.end method

.method public hasX()Z
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->hasX()Z

    move-result p0

    return p0
.end method

.method public hasY()Z
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->hasY()Z

    move-result p0

    return p0
.end method

.method public hasZ()Z
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->hasZ()Z

    move-result p0

    return p0
.end method

.method public setPresence(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$900(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V

    return-object p0
.end method

.method public setVisibility(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$700(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V

    return-object p0
.end method

.method public setX(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$100(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V

    return-object p0
.end method

.method public setY(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$300(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V

    return-object p0
.end method

.method public setZ(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->access$500(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V

    return-object p0
.end method
