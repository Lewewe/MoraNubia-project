.class public Lcn/nubia/redmagickyi/util/Bodypose;
.super Ljava/lang/Object;
.source "Bodypose.java"


# static fields
.field public static final BINARY_GRAPH_FACE_NAME:Ljava/lang/String; = "face_mesh_mobile_gpu.binarypb"

.field public static final BINARY_GRAPH_POSE_NAME:Ljava/lang/String; = "holistic_tracking_gpu.binarypb"

.field public static final DELAY_POSE_MONITOR:J = 0x3e8L

.field static final FACE_POINT_LEN:I = 0x3

.field static final HAND_POINT_LEN:I = 0x3

.field public static final INPUT_NUM_FACES:I = 0x1

.field public static final INPUT_SIDE_PACKET_MODEL_COMPLEXITY:Ljava/lang/String; = "model_complexity"

.field public static final INPUT_SIDE_PACKET_NUM_FACES:Ljava/lang/String; = "num_faces"

.field public static final INPUT_VIDEO_STREAM_NAME:Ljava/lang/String; = "input_video"

.field static final IRIS_POINT_LEN:I = 0x3

.field public static final LANDMARK_DEBUG:Z = false

.field public static final MODEL_COMPLEXITY_FULL:I = 0x1

.field public static final MODEL_COMPLEXITY_HEAVY:I = 0x2

.field public static final MODEL_COMPLEXITY_LITE:I = 0x0

.field static final NUM_FACE_IRIS_PTS:I = 0x1de

.field static final NUM_FACE_PTS:I = 0x1d4

.field static final NUM_HAND_PTS:I = 0x15

.field static final NUM_IRIS_PTS:I = 0xa

.field public static final OUTPUT_FACE_LANDMARKS_FACE:Ljava/lang/String; = "multi_face_landmarks"

.field public static final OUTPUT_FACE_LANDMARKS_POSE:Ljava/lang/String; = "face_landmarks"

.field public static final OUTPUT_LEFT_HAND_LANDMARKS:Ljava/lang/String; = "left_hand_landmarks"

.field public static final OUTPUT_POSE_LANDMARKS_STREAM_NAME:Ljava/lang/String; = "pose_world_landmarks"

.field public static final OUTPUT_RIGHT_HAND_LANDMARKS:Ljava/lang/String; = "right_hand_landmarks"

.field public static final OUTPUT_STREAM_FACE_DETECTIONS:Ljava/lang/String; = "face_detections"

.field public static final OUTPUT_STREAM_POSE_DETECTION:Ljava/lang/String; = "pose_detection"

.field public static final OUTPUT_VIDEO_STREAM_NAME:Ljava/lang/String; = "output_video"

.field public static final POSE_CONF_BODY:I = 0x0

.field public static final POSE_CONF_FACE:I = 0x1

.field public static final POSE_CONF_LH:I = 0x2

.field public static final POSE_CONF_RH:I = 0x3

.field static final POSE_JOINTS:I = 0x11

.field static final POSE_JOINTS_33:I = 0x21

.field static final POSE_POINT_LEN:I = 0x4

.field public static final SCENE_NUM_FACES:I = 0x1

.field static face3DData:[F = null

.field static face3DDataIris:[F = null

.field static instance:Lcn/nubia/redmagickyi/util/Bodypose; = null

.field static iris3DData:[F = null

.field static leftHand3DData:[F = null

.field static pose3DData:[F = null

.field static pose3DData33:[F = null

.field public static ready:Z = false

.field static rightHand3DData:[F


# instance fields
.field TAG:Ljava/lang/String;

.field cc:[F

.field private confidences:[F

.field private poseUnityCallBack:Lcn/nubia/redmagickyi/util/PoseUnityCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x44

    .line 22
    new-array v0, v0, [F

    sput-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData:[F

    const/16 v0, 0x84

    .line 25
    new-array v0, v0, [F

    sput-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData33:[F

    const/16 v0, 0x57c

    .line 29
    new-array v0, v0, [F

    sput-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->face3DData:[F

    const/16 v0, 0x59a

    .line 33
    new-array v0, v0, [F

    sput-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->face3DDataIris:[F

    const/16 v0, 0x3f

    .line 36
    new-array v1, v0, [F

    sput-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->leftHand3DData:[F

    .line 37
    new-array v0, v0, [F

    sput-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->rightHand3DData:[F

    const/16 v0, 0x1e

    .line 42
    new-array v0, v0, [F

    sput-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->iris3DData:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Bodypose"

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    .line 82
    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->confidences:[F

    const/16 v0, 0xc8

    .line 250
    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->cc:[F

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/util/Bodypose;
    .locals 1

    .line 145
    sget-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->instance:Lcn/nubia/redmagickyi/util/Bodypose;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/Bodypose;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->instance:Lcn/nubia/redmagickyi/util/Bodypose;

    .line 148
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/Bodypose;->instance:Lcn/nubia/redmagickyi/util/Bodypose;

    return-object v0
.end method


# virtual methods
.method public getFace3D()[F
    .locals 0

    .line 134
    sget-object p0, Lcn/nubia/redmagickyi/util/Bodypose;->face3DData:[F

    return-object p0
.end method

.method public getFace3D478()[F
    .locals 0

    .line 248
    sget-object p0, Lcn/nubia/redmagickyi/util/Bodypose;->face3DDataIris:[F

    return-object p0
.end method

.method public getLeftHand3D()[F
    .locals 0

    .line 252
    sget-object p0, Lcn/nubia/redmagickyi/util/Bodypose;->leftHand3DData:[F

    return-object p0
.end method

.method public getPointAll()[F
    .locals 0

    .line 137
    sget-object p0, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData:[F

    return-object p0
.end method

.method public getPose3D()[F
    .locals 0

    .line 131
    sget-object p0, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData:[F

    return-object p0
.end method

.method public getPose3D33()[F
    .locals 0

    .line 291
    sget-object p0, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData33:[F

    return-object p0
.end method

.method public getRightHand3D()[F
    .locals 0

    .line 255
    sget-object p0, Lcn/nubia/redmagickyi/util/Bodypose;->rightHand3DData:[F

    return-object p0
.end method

.method public getSavedPoseConfidence(I)F
    .locals 0

    .line 125
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->confidences:[F

    aget p0, p0, p1

    return p0
.end method

.method public getWH()[I
    .locals 1

    const/16 p0, 0xdc

    const/16 v0, 0x168

    .line 128
    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public saveLandmarkData(Landroid/app/Activity;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Ljava/lang/String;)V
    .locals 9

    .line 169
    const-string p0, ","

    .line 170
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 171
    new-array v1, v1, [F

    const/16 v2, 0x21

    .line 172
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v2

    .line 173
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    mul-int/lit8 v6, v4, 0x3

    .line 174
    invoke-virtual {v5}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v7

    aput v7, v1, v6

    add-int/lit8 v7, v6, 0x1

    .line 175
    invoke-virtual {v5}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getY()F

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v7, v6, 0x2

    .line 176
    invoke-virtual {v5}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getZ()F

    move-result v8

    aput v8, v1, v7

    if-eqz v2, :cond_0

    add-int/lit8 v6, v6, 0x3

    .line 178
    invoke-virtual {v5}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getVisibility()F

    move-result v5

    aput v5, v1, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 180
    aput v5, v1, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_1
    :try_start_0
    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    goto :goto_2

    .line 191
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 192
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :goto_2
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_3
    if-ge v3, v0, :cond_3

    mul-int/lit8 p2, v3, 0x3

    .line 199
    aget p3, v1, p2

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 p3, p2, 0x1

    .line 201
    aget p3, v1, p3

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 p3, p2, 0x2

    .line 203
    aget p3, v1, p3

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 p2, p2, 0x3

    .line 205
    aget p2, v1, p2

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 206
    const-string/jumbo p2, "|"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 208
    :cond_3
    const-string p0, "\r\n"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 213
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_4
    return-void
.end method

.method public setFace3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 5

    .line 152
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 154
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->face3DData:[F

    mul-int/lit8 v2, p1, 0x3

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v3

    aput v3, v1, v2

    .line 155
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->face3DData:[F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getY()F

    move-result v4

    aput v4, v1, v3

    .line 156
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->face3DData:[F

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getZ()F

    move-result v0

    aput v0, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFace3DIris(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 228
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object p1

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 230
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->face3DDataIris:[F

    mul-int/lit8 v2, p0, 0x3

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v3

    aput v3, v1, v2

    .line 231
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->face3DDataIris:[F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getY()F

    move-result v4

    aput v4, v1, v3

    .line 232
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->face3DDataIris:[F

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getZ()F

    move-result v0

    aput v0, v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHand3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Z)V
    .locals 5

    .line 259
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object p0

    .line 260
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    if-eqz p2, :cond_0

    .line 262
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->leftHand3DData:[F

    mul-int/lit8 v2, p1, 0x3

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v3

    aput v3, v1, v2

    .line 263
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->leftHand3DData:[F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getY()F

    move-result v4

    aput v4, v1, v3

    .line 264
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->leftHand3DData:[F

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getZ()F

    move-result v0

    aput v0, v1, v2

    goto :goto_1

    .line 266
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->rightHand3DData:[F

    mul-int/lit8 v2, p1, 0x3

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v3

    aput v3, v1, v2

    .line 267
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->rightHand3DData:[F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getY()F

    move-result v4

    aput v4, v1, v3

    .line 268
    sget-object v1, Lcn/nubia/redmagickyi/util/Bodypose;->rightHand3DData:[F

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getZ()F

    move-result v0

    aput v0, v1, v2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPose3D([F)V
    .locals 7

    .line 84
    sput-object p1, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData:[F

    const/16 v0, 0x11

    .line 85
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    move v4, v3

    move v3, v2

    move v2, v1

    .line 89
    :goto_0
    sget-object v5, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData:[F

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 90
    aget v5, p1, v4

    aput v5, v0, v3

    const/16 v6, 0x8

    if-ge v3, v6, :cond_0

    add-float/2addr v2, v5

    goto :goto_1

    .line 94
    :cond_0
    invoke-static {v3, v6}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    aget v5, v0, v3

    add-float/2addr v1, v5

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40d00000    # 6.5f

    cmpl-float p1, v1, p1

    if-lez p1, :cond_4

    const/high16 p1, 0x40b00000    # 5.5f

    cmpl-float p1, v2, p1

    if-lez p1, :cond_3

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->TAG:Ljava/lang/String;

    const-string p1, "setPose3D: mode image_all"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->TAG:Ljava/lang/String;

    const-string p1, "setPose3D: mode image_half"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 109
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->TAG:Ljava/lang/String;

    const-string p1, "setPose3D: mode not body found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setPose3D33(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)F
    .locals 6

    .line 276
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object p0

    .line 277
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 278
    sget-object v2, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData33:[F

    mul-int/lit8 v3, p1, 0x4

    invoke-virtual {v1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getX()F

    move-result v4

    aput v4, v2, v3

    .line 279
    sget-object v2, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData33:[F

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getY()F

    move-result v5

    aput v5, v2, v4

    .line 280
    sget-object v2, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData33:[F

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getZ()F

    move-result v5

    aput v5, v2, v4

    .line 281
    sget-object v2, Lcn/nubia/redmagickyi/util/Bodypose;->pose3DData33:[F

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getVisibility()F

    move-result v4

    aput v4, v2, v3

    const/16 v2, 0xd

    if-ge p1, v2, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->getVisibility()F

    move-result v1

    add-float/2addr v0, v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setPoseConfidence(IF)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->poseUnityCallBack:Lcn/nubia/redmagickyi/util/PoseUnityCallBack;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1, p2}, Lcn/nubia/redmagickyi/util/PoseUnityCallBack;->onPoseConfidence(IF)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->TAG:Ljava/lang/String;

    const-string p1, "setPoseConfidence: Unity has never registed pose callback"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPoseConfidenceSaved(IF)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Bodypose;->confidences:[F

    aput p2, v0, p1

    .line 122
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    return-void
.end method

.method public setPoseUnityCallBack(Lcn/nubia/redmagickyi/util/PoseUnityCallBack;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/Bodypose;->poseUnityCallBack:Lcn/nubia/redmagickyi/util/PoseUnityCallBack;

    return-void
.end method

.method public setReady(Z)V
    .locals 0

    .line 140
    sput-boolean p1, Lcn/nubia/redmagickyi/util/Bodypose;->ready:Z

    return-void
.end method
