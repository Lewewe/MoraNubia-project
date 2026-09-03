.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;
.super Ljava/lang/Object;
.source "ResponseError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseErrorBuilder"
.end annotation


# instance fields
.field private error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;
    .locals 1

    .line 9
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;->error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    invoke-direct {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError;-><init>(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;)V

    return-object v0
.end method

.method public error(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;->error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResponseError.ResponseErrorBuilder(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResponseError$ResponseErrorBuilder;->error:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Error;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
