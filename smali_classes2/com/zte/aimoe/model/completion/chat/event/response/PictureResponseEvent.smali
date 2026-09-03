.class public Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;
.super Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;
.source "PictureResponseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;
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


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
