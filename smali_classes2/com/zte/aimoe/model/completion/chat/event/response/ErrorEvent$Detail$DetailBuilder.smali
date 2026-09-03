.class public Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;
.super Ljava/lang/Object;
.source "ErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailBuilder"
.end annotation


# instance fields
.field private info:Ljava/lang/String;

.field private logid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;
    .locals 2

    .line 44
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;->logid:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;->info:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public info(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;->info:Ljava/lang/String;

    return-object p0
.end method

.method public logid(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;->logid:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorEvent.Detail.DetailBuilder(logid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;->logid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail$DetailBuilder;->info:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
