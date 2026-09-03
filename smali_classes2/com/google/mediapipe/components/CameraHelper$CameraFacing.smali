.class public final enum Lcom/google/mediapipe/components/CameraHelper$CameraFacing;
.super Ljava/lang/Enum;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/components/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraFacing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/components/CameraHelper$CameraFacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

.field public static final enum BACK:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

.field public static final enum FRONT:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->FRONT:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    .line 38
    new-instance v1, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    const-string v2, "BACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->BACK:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    .line 36
    filled-new-array {v0, v1}, [Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->$VALUES:[Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/components/CameraHelper$CameraFacing;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 36
    const-class v0, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/components/CameraHelper$CameraFacing;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->$VALUES:[Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    invoke-virtual {v0}, [Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    return-object v0
.end method
