.class public Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;
.super Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;
.source "ProfileResponseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;
    .locals 1

    .line 15
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
