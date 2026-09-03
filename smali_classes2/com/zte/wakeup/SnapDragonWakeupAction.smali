.class public Lcom/zte/wakeup/SnapDragonWakeupAction;
.super Ljava/lang/Object;
.source "SnapDragonWakeupAction.java"


# static fields
.field public static final PK_WAKEUP:Ljava/lang/String; = "com.zte.voiceassist.wakeup"

.field private static final SUPPORT_CUSTOM_VERSION:I = 0xf

.field protected static final TAG:Ljava/lang/String; = "SnapDragonWakeup"

.field private static mInstance:Lcom/zte/wakeup/SnapDragonWakeupAction;


# instance fields
.field protected context:Landroid/content/Context;

.field private isSnapDragonWakeup:Z

.field private isSupportCustom:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSnapDragonWakeup:Z

    .line 24
    iput-boolean v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSupportCustom:Z

    .line 28
    iput-object p1, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->initSnapDragonWakeup()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zte/wakeup/SnapDragonWakeupAction;
    .locals 3

    const-class v0, Lcom/zte/wakeup/SnapDragonWakeupAction;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/zte/wakeup/SnapDragonWakeupAction;->mInstance:Lcom/zte/wakeup/SnapDragonWakeupAction;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/zte/wakeup/SnapDragonWakeupAction;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/wakeup/SnapDragonWakeupAction;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zte/wakeup/SnapDragonWakeupAction;->mInstance:Lcom/zte/wakeup/SnapDragonWakeupAction;

    .line 36
    :cond_0
    sget-object v1, Lcom/zte/wakeup/SnapDragonWakeupAction;->mInstance:Lcom/zte/wakeup/SnapDragonWakeupAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hasPermission(Landroid/content/Context;)Z
    .locals 4

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/CommonUtils;->isHasPermissions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private initSnapDragonWakeup()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "com.zte.voiceassist.wakeup"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/CommonUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSnapDragonWakeup:Z

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/CommonUtils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSupportCustom:Z

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSnapDragonWakeup:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSnapDragonWakeup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--isSupportCustom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSupportCustom:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SnapDragonWakeup"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setEnableWakeup(Z)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/wakeup/SnapDragonWakeupAction;->putSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public canStartWakeup()Z
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->hasPermission()Z

    move-result p0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canStartWakeup:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnapDragonWakeup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCurrentWakeupWords()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->isCustomWakeupWordOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getDefaultWakeupWords()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCustomWakeupWord()Ljava/lang/String;
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "custom_wakeup_word_content"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSystemSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCustomWakeupWord1 w:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapDragonWakeup"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getCustomWakeupWord:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSupportCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->hasTrainedFileUdk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultWakeupWords()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils$AIGC;->isZteModel()Z

    move-result v0

    iget-object p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget v0, Lcom/zte/aimodel/R$string;->wakeup_words_zte:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/zte/aimodel/R$string;->wakeup_words_redmagic:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public go2SystemVoiceAssistant(Landroid/content/Context;)V
    .locals 1

    .line 221
    const-string p0, "com.zte.halo.app.VOICE_WAKEUP_SETTINGS"

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isActionSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :cond_0
    const-string p0, "SnapDragonWakeup"

    const-string p1, "No Activity found to handle Intent { act=com.zte.halo.app.VOICE_WAKEUP_SETTINGS }"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hasPermission()Z
    .locals 4

    .line 272
    iget-object p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/CommonUtils;->isHasPermissions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasTrainedFile()Z
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->isCustomWakeupWordOpen()Z

    move-result v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasTrainedFile custom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapDragonWakeup"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->hasTrainedFilePdk()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 149
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onWakeupSwitchOn has="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public hasTrainedFilePdk()Z
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSnapDragonWakeup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSupportCustom()Z

    move-result v0

    const-string v2, "content://com.zte.voiceassist.wakeup.provider"

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "hasTrainedFilePdk"

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "hasTrainedFile"

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 194
    const-string p0, "has"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 197
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasTrainedFilePdk has="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnapDragonWakeup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public hasTrainedFileUdk(Ljava/lang/String;)Z
    .locals 3

    .line 163
    iget-object p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.zte.voiceassist.wakeup.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "udk"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "hasTrainedFileUdk"

    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    const-string p1, "has"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 169
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hasTrainedFileUdk has="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SnapDragonWakeup"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isCustomWakeupWordOpen()Z
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "custom_wakeup_word_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->setCustomWakeupWordOff()V

    :cond_1
    return v2
.end method

.method public isEnableSystemVoiceAssistant()Z
    .locals 2

    .line 216
    iget-object p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v0, "VOICE_ASSISTANT_HARDWARE_VOICE_WAKEUP"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isEnableWakeup()Z
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0, v1}, Lcom/zte/wakeup/SnapDragonWakeupAction;->setEnableWakeup(Z)V

    :goto_0
    return v1
.end method

.method public isSnapDragonWakeup()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSnapDragonWakeup:Z

    return p0
.end method

.method public isSupportCustom()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSupportCustom:Z

    return p0
.end method

.method protected putSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 301
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method protected putSystemSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 305
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSystemSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCustomWakeupWord(Ljava/lang/String;)V
    .locals 2

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->isSupportCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zte/wakeup/SnapDragonWakeupAction;->hasTrainedFileUdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->setCustomWakeupWordOn()V

    .line 98
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "custom_wakeup_word_content"

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/wakeup/SnapDragonWakeupAction;->putSystemSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->setCustomWakeupWordOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCustomWakeupWordOff()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "custom_wakeup_word_open"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/wakeup/SnapDragonWakeupAction;->putSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCustomWakeupWordOn()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    const-string v1, "custom_wakeup_word_open"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/wakeup/SnapDragonWakeupAction;->putSystemSettingsInt(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method public startWakeup()Z
    .locals 3

    const/4 v0, 0x1

    .line 241
    invoke-direct {p0, v0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->setEnableWakeup(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->canStartWakeup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "SnapDragonWakeup"

    const-string v2, "onWakeupSwitchOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->startWakeupService()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected startWakeupService()V
    .locals 4

    .line 283
    const-string v0, "startWakeupService"

    const-string v1, "SnapDragonWakeup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p0, p0, Lcom/zte/wakeup/SnapDragonWakeupAction;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.zte.voiceassist.wakeup.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "startWakeup"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NullPointerException: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    const-string p0, "startWakeupService "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 293
    :cond_0
    const-string p0, "startWakeupService context null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public stopWakeup()V
    .locals 2

    .line 254
    const-string v0, "SnapDragonWakeup"

    const-string v1, "onWakeupSwitchOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lcom/zte/wakeup/SnapDragonWakeupAction;->setEnableWakeup(Z)V

    return-void
.end method
