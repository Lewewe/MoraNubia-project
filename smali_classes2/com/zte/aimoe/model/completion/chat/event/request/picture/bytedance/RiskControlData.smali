.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;
.super Ljava/lang/Object;
.source "RiskControlData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    }
.end annotation


# instance fields
.field private accountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_id"
    .end annotation
.end field

.field private biztype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biztype"
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private dataId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data_id"
    .end annotation
.end field

.field private interval:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval"
    .end annotation
.end field

.field private maxFrames:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxFrames"
    .end annotation
.end field

.field private operateTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operate_time"
    .end annotation
.end field

.field private passThrough:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pass_through"
    .end annotation
.end field

.field private pictureType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture_type"
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_id"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->accountId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->dataId:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->url:Ljava/lang/String;

    iput p4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->operateTime:I

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->data:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->biztype:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->pictureType:Ljava/lang/String;

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->sessionId:Ljava/lang/String;

    iput-object p9, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->type:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->interval:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->maxFrames:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;->passThrough:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 1

    .line 8
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;-><init>()V

    return-object v0
.end method
