.class public Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    }
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
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_name:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_id:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_version:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->account_id:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->device:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->os_platform:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->sdk_version:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->device_id:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->red_magic:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->product:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->mfv_version:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->custom_logo:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->display:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->flag:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->ai_digital_human:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->ai_disposition:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->aiDisposition:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->build_time:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;
    .locals 1

    .line 12
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_name()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_id()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_version()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAccount_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAccount_id()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDevice()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getOs_platform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getOs_platform()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getSdk_version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getSdk_version()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getRed_magic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getRed_magic()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getProduct()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_9
    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getMfv_version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getMfv_version()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_17

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :goto_a
    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getCustom_logo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getCustom_logo()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_19

    if-eqz v3, :cond_1a

    goto :goto_b

    :cond_19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_b
    return v2

    :cond_1a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDisplay()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1b

    if-eqz v3, :cond_1c

    goto :goto_c

    :cond_1b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    :goto_c
    return v2

    :cond_1c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getFlag()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1d

    if-eqz v3, :cond_1e

    goto :goto_d

    :cond_1d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    :goto_d
    return v2

    :cond_1e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAi_digital_human()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAi_digital_human()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1f

    if-eqz v3, :cond_20

    goto :goto_e

    :cond_1f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    :goto_e
    return v2

    :cond_20
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAi_disposition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAi_disposition()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_21

    if-eqz v3, :cond_22

    goto :goto_f

    :cond_21
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    :goto_f
    return v2

    :cond_22
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAiDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAiDisposition()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_23

    if-eqz v3, :cond_24

    goto :goto_10

    :cond_23
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :goto_10
    return v2

    :cond_24
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getBuild_time()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getBuild_time()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_25

    if-eqz p1, :cond_26

    goto :goto_11

    :cond_25
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    :goto_11
    return v2

    :cond_26
    return v0
.end method

.method public getAccount_id()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public getAiDisposition()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->aiDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getAi_digital_human()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->ai_digital_human:Ljava/lang/String;

    return-object p0
.end method

.method public getAi_disposition()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->ai_disposition:Ljava/lang/String;

    return-object p0
.end method

.method public getApp_id()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_name:Ljava/lang/String;

    return-object p0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_version:Ljava/lang/String;

    return-object p0
.end method

.method public getBuild_time()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->build_time:Ljava/lang/String;

    return-object p0
.end method

.method public getCustom_logo()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->custom_logo:Ljava/lang/String;

    return-object p0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->device:Ljava/lang/String;

    return-object p0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->display:Ljava/lang/String;

    return-object p0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->flag:Ljava/lang/String;

    return-object p0
.end method

.method public getMfv_version()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->mfv_version:Ljava/lang/String;

    return-object p0
.end method

.method public getOs_platform()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->os_platform:Ljava/lang/String;

    return-object p0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->product:Ljava/lang/String;

    return-object p0
.end method

.method public getRed_magic()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->red_magic:Ljava/lang/String;

    return-object p0
.end method

.method public getSdk_version()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->sdk_version:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 11
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_id()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getApp_version()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAccount_id()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDevice()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getOs_platform()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getSdk_version()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getRed_magic()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getProduct()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getMfv_version()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getCustom_logo()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getDisplay()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getFlag()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAi_digital_human()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAi_disposition()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getAiDisposition()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->getBuild_time()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccount_id(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->account_id:Ljava/lang/String;

    return-void
.end method

.method public setAiDisposition(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->aiDisposition:Ljava/lang/String;

    return-void
.end method

.method public setAi_digital_human(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->ai_digital_human:Ljava/lang/String;

    return-void
.end method

.method public setAi_disposition(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->ai_disposition:Ljava/lang/String;

    return-void
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_name:Ljava/lang/String;

    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setBuild_time(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->build_time:Ljava/lang/String;

    return-void
.end method

.method public setCustom_logo(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->custom_logo:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->device:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->display:Ljava/lang/String;

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->flag:Ljava/lang/String;

    return-void
.end method

.method public setMfv_version(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->mfv_version:Ljava/lang/String;

    return-void
.end method

.method public setOs_platform(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->os_platform:Ljava/lang/String;

    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->product:Ljava/lang/String;

    return-void
.end method

.method public setRed_magic(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->red_magic:Ljava/lang/String;

    return-void
.end method

.method public setSdk_version(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->sdk_version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
