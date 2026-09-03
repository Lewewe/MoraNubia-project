.class Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;
.super Ljava/lang/Object;
.source "PoseMonitorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startPoseMonitor(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

.field final synthetic val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 287
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$000(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->getCurrentLiveType()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_c

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_0

    goto/16 :goto_2

    .line 289
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$000(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->isFaceOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$100(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$100(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 292
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$200(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F

    move-result v1

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$202(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F

    .line 296
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseDetected()V

    goto/16 :goto_2

    .line 298
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 299
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 300
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseUndetected()V

    goto/16 :goto_2

    .line 303
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 304
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 305
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseUndetected()V

    goto/16 :goto_2

    .line 308
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseDetected()V

    goto/16 :goto_2

    .line 312
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$000(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->isFaceOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 313
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$100(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 314
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$100(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 315
    iget-object v7, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v7}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$200(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F

    move-result v7

    invoke-static {v7, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v7

    if-nez v7, :cond_5

    .line 316
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$202(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseDetected()V

    goto :goto_0

    .line 321
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 322
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 323
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseUndetected()V

    goto :goto_0

    .line 326
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 328
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseUndetected()V

    goto :goto_0

    .line 331
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseDetected()V

    .line 333
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$400(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 334
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$400(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 335
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$500(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F

    move-result v2

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v2

    if-nez v2, :cond_8

    .line 336
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$502(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F

    .line 337
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v6, v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    goto :goto_1

    .line 339
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v6, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    goto :goto_1

    .line 342
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v6, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 344
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$600(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 345
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$600(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 346
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$700(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F

    move-result v2

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v2

    if-nez v2, :cond_a

    .line 347
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$702(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F

    .line 348
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {p0, v5, v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    goto/16 :goto_2

    .line 350
    :cond_a
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {p0, v5, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    goto :goto_2

    .line 353
    :cond_b
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {p0, v5, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    goto :goto_2

    .line 357
    :cond_c
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$000(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->isFaceOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 358
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$800(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$900(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 359
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$800(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {v0, v3}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v0

    .line 360
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$1000(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F

    move-result v3

    invoke-static {v3, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v3

    if-nez v3, :cond_d

    .line 361
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v3, v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$1002(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F

    .line 363
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 364
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseDetected()V

    goto :goto_2

    .line 367
    :cond_d
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 368
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseUndetected()V

    goto :goto_2

    .line 371
    :cond_e
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-static {v0, v2, v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V

    .line 372
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseUndetected()V

    goto :goto_2

    .line 375
    :cond_f
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;->val$monitorCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;->onPoseDetected()V

    :goto_2
    return-void
.end method
