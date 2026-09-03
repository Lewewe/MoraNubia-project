.class public Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$ClientInfo;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientInfo"
.end annotation


# static fields
.field private static clientInfo:Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;
    .locals 3

    .line 48
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$ClientInfo;->clientInfo:Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->builder()Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 51
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_name(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->app_version(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->os_platform(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->product(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->device_id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getMFVVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->mfv_version(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 57
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getVariantFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->custom_logo(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 58
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNubiaRedMagicDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->red_magic(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    const-string v1, "ro.vendor.feature.userguide_flag"

    const-string v2, ""

    .line 59
    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->flag(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->display(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getSystemBuildTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->build_time(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->sdk_version(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo$ClientInfoBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$ClientInfo;->clientInfo:Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    .line 65
    :cond_1
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$ClientInfo;->clientInfo:Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    invoke-virtual {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;->setAccount_id(Ljava/lang/String;)V

    .line 66
    sget-object p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$ClientInfo;->clientInfo:Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    return-object p0
.end method
