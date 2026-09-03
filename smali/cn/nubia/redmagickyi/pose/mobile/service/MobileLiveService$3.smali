.class Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;
.super Ljava/lang/Object;
.source "MobileLiveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->poseMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 576
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 579
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 580
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$700(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$700(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 582
    iget-object v6, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v6}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$800(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F

    move-result v6

    invoke-static {v6, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v6

    if-nez v6, :cond_1

    .line 583
    iget-object v6, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v6, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$802(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F

    goto :goto_0

    .line 587
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 588
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 592
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 595
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_6

    .line 596
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 597
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 598
    iget-object v7, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v7}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F

    move-result v7

    invoke-static {v7, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v7

    if-nez v7, :cond_4

    .line 599
    iget-object v7, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v7, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1102(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F

    .line 601
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2, v6}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    goto :goto_1

    .line 604
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    goto :goto_1

    .line 607
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 610
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 611
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    const-string v2, "run: left hand invalid"

    const-string v7, "MobileLiveService"

    if-eqz v0, :cond_8

    .line 612
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 613
    iget-object v8, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v8}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1300(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F

    move-result v8

    invoke-static {v8, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v8

    if-nez v8, :cond_7

    .line 614
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1302(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F

    .line 615
    const-string v0, "run: left hand valid"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v1, v6}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    goto :goto_2

    .line 618
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v1, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 619
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 622
    :cond_8
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v1, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 625
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    const-string v1, "run: right hand invalid"

    if-eqz v0, :cond_a

    .line 626
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 627
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F

    move-result v2

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v2

    if-nez v2, :cond_9

    .line 628
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1502(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F

    .line 629
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v5, v6}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 630
    const-string p0, "run: right hand valid"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 632
    :cond_9
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v5, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 633
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 636
    :cond_a
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v5, v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    :cond_b
    :goto_3
    return-void
.end method
