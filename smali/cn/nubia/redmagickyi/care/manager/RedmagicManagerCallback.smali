.class public Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;
.super Ljava/lang/Object;
.source "RedmagicManagerCallback.java"

# interfaces
.implements Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;
.implements Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;
.implements Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;,
        Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;
    }
.end annotation


# static fields
.field private static final BATTERY_LOW_10:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RedmagicManagerCallback"

.field private static headsetPlugUtil:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

.field private static redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private static redmagicCareManager:Lcn/nubia/redmagickyi/database/RedmagicCareManager;

.field private static volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;


# instance fields
.field IS_DESK_VISIBLE:Z

.field context:Landroid/content/Context;

.field public handler:Landroid/os/Handler;

.field mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

.field redMagicCareThread:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;

.field private redmagicCareInterface:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IS_DESK_VISIBLE:Z

    .line 262
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$1;-><init>(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->handler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    .line 124
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareManager:Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    .line 126
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 131
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    .line 133
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->registerReceiver()V

    .line 134
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->setVolumeChangeListener(Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver$VolumeChangeListener;)V

    .line 138
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->headsetPlugUtil:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    invoke-direct {v0, p1, p0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;)V

    sput-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->headsetPlugUtil:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    .line 140
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->RegiestHeadsPlug()V

    :cond_1
    return-void
.end method

.method public static UnRegiestHeadsPlug()V
    .locals 1

    .line 257
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->headsetPlugUtil:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->UnRegiestHeadsPlug()V

    const/4 v0, 0x0

    .line 259
    sput-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->headsetPlugUtil:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    :cond_0
    return-void
.end method

.method public static VolumeUnregister()V
    .locals 1

    .line 249
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 251
    sput-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->volumeChangeObserver:Lcn/nubia/redmagickyi/care/manager/VolumeChangeObserver;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcn/nubia/redmagickyi/database/RedmagicCareManager;
    .locals 1

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareManager:Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    return-object v0
.end method

.method static synthetic access$100()Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;
    .locals 1

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;)Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareInterface:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;

    return-object p0
.end method


# virtual methods
.method public IsCareConditinTure(I)Z
    .locals 6

    .line 317
    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getCareTypeInt(I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->IsCheckThisScenceCare(Landroid/content/Context;I)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "RedmagicManagerCallback"

    if-nez p0, :cond_0

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "IsCareConditinTure NOT OPEN SWITCH:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 321
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareManager:Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getLastCareTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getPlayFrequency()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getPalyCareFrequencyTime(I)J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-gez p0, :cond_2

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "IsCareConditinTure LIMIT CARETIME:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-object v1, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareManager:Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getLastCareTime()J

    move-result-wide v1

    sub-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-gez p0, :cond_1

    .line 324
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->UpdateCurrentCareTimeMillis()V

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public OnRedmagicCare(I)V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IS_DESK_VISIBLE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->HasCheckCareItem(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->NotLimitCareTime(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnRedmagicCare: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RedmagicManagerCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareInterface:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;

    if-eqz p0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareManager:Lcn/nubia/redmagickyi/database/RedmagicCareManager;

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;->OnRedmagicCareCallback(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public StartCare()V
    .locals 2

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IS_DESK_VISIBLE:Z

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->getWeather()V

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareThread:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;-><init>(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareThread:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;

    .line 222
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartCare error!:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RedmagicManagerCallback"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public StopCare()V
    .locals 3

    .line 232
    const-string v0, "StopCare"

    const-string v1, "RedmagicManagerCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IS_DESK_VISIBLE:Z

    .line 236
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareThread:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;->interrupt()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareThread:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedMagicCareThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "StopCare error!:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public bindShakeListenerService()V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->unbindShakeListenerService()V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->bindShakeListener(Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;)V

    :cond_1
    return-void
.end method

.method public getWeather()V
    .locals 6

    .line 302
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "RedmagicManagerCallback"

    if-nez v0, :cond_1

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getLastWeatherTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x413b774000000000L    # 1800000.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 307
    const-string v0, "getWeather()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->self()Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->init(Landroid/content/Context;)V

    .line 309
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->context:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWeather(Landroid/content/Context;)V

    goto :goto_0

    .line 312
    :cond_1
    const-string p0, "no find weather"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestory()V
    .locals 3

    .line 271
    const-string v0, "RedmagicManagerCallback"

    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->VolumeUnregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 273
    const-string v2, "VolumeUnregister Unregister exiption !!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    :goto_0
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->UnRegiestHeadsPlug()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 279
    const-string v2, "UnRegiestHeadsPlug Unregister exiption !!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->unBindShakeListener(Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;)V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    :cond_0
    return-void
.end method

.method public onGravityFall()V
    .locals 2

    .line 57
    const-string v0, "RedmagicManagerCallback"

    const-string v1, "onGravityFall():1001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IS_DESK_VISIBLE:Z

    const/16 v0, 0x3e9

    .line 59
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IsCareConditinTure(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->OnRedmagicCare(I)V

    return-void
.end method

.method public onHeadsetPlug(Z)V
    .locals 5

    const/16 v0, 0x3ef

    .line 86
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IsCareConditinTure(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 90
    const-string v2, "RedmagicManagerCallback"

    if-eqz p1, :cond_4

    .line 91
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p1, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    const-string p0, "No BLUETOOTH_CONNECT permissions"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x2

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 97
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->OnRedmagicCare(I)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p0

    if-nez p0, :cond_3

    .line 100
    const-string p0, "open 1:"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_3
    const-string p0, "open2:"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_4
    const-string p1, "erji :"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->OnRedmagicCare(I)V

    :goto_0
    return-void
.end method

.method public onRingModeChanged(I)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRingModeChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RedmagicManagerCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3ee

    .line 74
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IsCareConditinTure(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->OnRedmagicCare(I)V

    :cond_1
    return-void
.end method

.method public onShake(D)V
    .locals 0

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IS_DESK_VISIBLE:Z

    .line 47
    const-string p1, "RedmagicManagerCallback"

    const-string p2, "onShake:1002"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3ea

    .line 48
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->IsCareConditinTure(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->OnRedmagicCare(I)V

    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 1

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onVolumeChanged:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RedmagicManagerCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRedmagicCareCallback(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->redmagicCareInterface:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;

    return-void
.end method

.method public unbindShakeListenerService()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->unBindShakeListener(Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->mShakeUtils:Lcn/nubia/redmagickyi/care/utils/ShakeUtils;

    :cond_0
    return-void
.end method
