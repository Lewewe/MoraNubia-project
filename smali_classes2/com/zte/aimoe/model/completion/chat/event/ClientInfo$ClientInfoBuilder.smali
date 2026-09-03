.class public Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientInfoBuilder"
.end annotation


# instance fields
.field private account_id:Ljava/lang/String;

.field private aiDisposition:Ljava/lang/String;

.field private ai_digital_human:Ljava/lang/String;

.field private ai_disposition:Ljava/lang/String;

.field private app_id:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_version:Ljava/lang/String;

.field private build_time:Ljava/lang/String;

.field private custom_logo:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private mfv_version:Ljava/lang/String;

.field private os_platform:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private red_magic:Ljava/lang/String;

.field private sdk_version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public account_id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public aiDisposition(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->aiDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public ai_digital_human(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->ai_digital_human:Ljava/lang/String;

    return-object p0
.end method

.method public ai_disposition(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->ai_disposition:Ljava/lang/String;

    return-object p0
.end method

.method public app_id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public app_name(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_name:Ljava/lang/String;

    return-object p0
.end method

.method public app_version(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_version:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;
    .locals 22

    move-object/from16 v0, p0

    .line 12
    new-instance v20, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_name:Ljava/lang/String;

    iget-object v3, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_version:Ljava/lang/String;

    iget-object v5, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->account_id:Ljava/lang/String;

    iget-object v6, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device:Ljava/lang/String;

    iget-object v7, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->os_platform:Ljava/lang/String;

    iget-object v8, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->sdk_version:Ljava/lang/String;

    iget-object v9, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device_id:Ljava/lang/String;

    iget-object v10, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->red_magic:Ljava/lang/String;

    iget-object v11, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->product:Ljava/lang/String;

    iget-object v12, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->mfv_version:Ljava/lang/String;

    iget-object v13, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->custom_logo:Ljava/lang/String;

    iget-object v14, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->display:Ljava/lang/String;

    iget-object v15, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->flag:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->ai_digital_human:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->ai_disposition:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->aiDisposition:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v0, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->build_time:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20
.end method

.method public build_time(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->build_time:Ljava/lang/String;

    return-object p0
.end method

.method public custom_logo(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->custom_logo:Ljava/lang/String;

    return-object p0
.end method

.method public device(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device:Ljava/lang/String;

    return-object p0
.end method

.method public device_id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public display(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->display:Ljava/lang/String;

    return-object p0
.end method

.method public flag(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->flag:Ljava/lang/String;

    return-object p0
.end method

.method public mfv_version(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->mfv_version:Ljava/lang/String;

    return-object p0
.end method

.method public os_platform(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->os_platform:Ljava/lang/String;

    return-object p0
.end method

.method public product(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->product:Ljava/lang/String;

    return-object p0
.end method

.method public red_magic(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->red_magic:Ljava/lang/String;

    return-object p0
.end method

.method public sdk_version(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->sdk_version:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientInfo.ClientInfoBuilder(app_name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->account_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", os_platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->os_platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->sdk_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", red_magic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->red_magic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mfv_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->mfv_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", custom_logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->custom_logo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ai_digital_human="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->ai_digital_human:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ai_disposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->ai_disposition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aiDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->aiDisposition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", build_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->build_time:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
