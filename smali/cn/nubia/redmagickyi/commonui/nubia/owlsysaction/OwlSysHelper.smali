.class public Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;
.super Ljava/lang/Object;
.source "OwlSysHelper.java"


# static fields
.field public static final DEFAULT_EVENT_NAME:Ljava/lang/String;

.field public static final DEFAULT_PKG_NAME:Ljava/lang/String;

.field public static final REPORT_ACTION_TYPE:Ljava/lang/String; = "action_type"

.field public static final REPORT_ACTION_VALUE:Ljava/lang/String; = "action_value"

.field public static final REPORT_EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final REPORT_INTERVAL:Ljava/lang/String; = "report_interval"

.field public static final REPORT_PKG_NAME:Ljava/lang/String;

.field public static final TRACK_BROADCAST_CF_FUNTION_KEY:Ljava/lang/String; = "cyhxsy_switch"

.field public static final TRACK_BROADCAST_CF_SCENES_KEY:Ljava/lang/String; = "cyhxsy_sitem"

.field public static final TRACK_BROADCAST_CF_SCENES_VALUE:[Ljava/lang/String;

.field public static final TRACK_BROADCAST_CODM_FUNTION_KEY:Ljava/lang/String; = "codm_switch"

.field public static final TRACK_BROADCAST_CODM_SCENES_KEY:Ljava/lang/String; = "codm_sitem"

.field public static final TRACK_BROADCAST_CODM_SCENES_VALUE:[Ljava/lang/String;

.field public static final TRACK_BROADCAST_GENSHIN_FUNTION_KEY:Ljava/lang/String; = "ys_switch"

.field public static final TRACK_BROADCAST_GENSHIN_SCENES_KEY:Ljava/lang/String; = "ys_sitem"

.field public static final TRACK_BROADCAST_GENSHIN_SCENES_VALUE:[Ljava/lang/String;

.field public static final TRACK_BROADCAST_HPJY_FUNTION_KEY:Ljava/lang/String; = "hpjy_switch"

.field public static final TRACK_BROADCAST_HPJY_SCENES_KEY:Ljava/lang/String; = "hpjy_sitem"

.field public static final TRACK_BROADCAST_HPJY_SCENES_VALUE:[Ljava/lang/String;

.field public static final TRACK_BROADCAST_LOLM_FUNTION_KEY:Ljava/lang/String; = "lol_switch"

.field public static final TRACK_BROADCAST_LOLM_SCENES_KEY:Ljava/lang/String; = "lol_sitem"

.field public static final TRACK_BROADCAST_LOLM_SCENES_VALUE:[Ljava/lang/String;

.field public static final TRACK_BROADCAST_WZRY_FUNTION_KEY:Ljava/lang/String; = "wzry_switch"

.field public static final TRACK_BROADCAST_WZRY_SCENES_KEY:Ljava/lang/String; = "wzry_sitem"

.field public static final TRACK_BROADCAST_WZRY_SCENES_VALUE:[Ljava/lang/String;

.field public static final TRACK_SUPPORT_CF_FUNTION_KEY:Ljava/lang/String; = "cyhxsy_switch"

.field public static final TRACK_SUPPORT_CF_LEVEL_KEY:Ljava/lang/String; = "cyhxsy_level"

.field public static final TRACK_SUPPORT_CF_TEXT_EFFECT_KEY:Ljava/lang/String; = "cyhxsy_text_switch"

.field public static final TRACK_SUPPORT_CODM_FUNTION_KEY:Ljava/lang/String; = "codm_switch"

.field public static final TRACK_SUPPORT_CODM_LEVEL_KEY:Ljava/lang/String; = "codm_level"

.field public static final TRACK_SUPPORT_CODM_TEXT_EFFECT_KEY:Ljava/lang/String; = "codm_text_switch"

.field public static final TRACK_SUPPORT_GENSHIN_FUNTION_KEY:Ljava/lang/String; = "ys_switch"

.field public static final TRACK_SUPPORT_GENSHIN_LEVEL_KEY:Ljava/lang/String; = "ys_level"

.field public static final TRACK_SUPPORT_GENSHIN_TEXT_EFFECT_KEY:Ljava/lang/String; = "ys_text_switch"

.field public static final TRACK_SUPPORT_HPJY_FUNTION_KEY:Ljava/lang/String; = "hpjy_switch"

.field public static final TRACK_SUPPORT_HPJY_LEVEL_KEY:Ljava/lang/String; = "hpjy_level"

.field public static final TRACK_SUPPORT_HPJY_TEXT_EFFECT_KEY:Ljava/lang/String; = "hpjy_text_switch"

.field public static final TRACK_SUPPORT_LOLM_FUNTION_KEY:Ljava/lang/String; = "lol_switch"

.field public static final TRACK_SUPPORT_LOLM_LEVEL_KEY:Ljava/lang/String; = "lol_level"

.field public static final TRACK_SUPPORT_LOLM_TEXT_EFFECT_KEY:Ljava/lang/String; = "lol_text_switch"

.field public static final TRACK_SUPPORT_WZRY_FUNTION_KEY:Ljava/lang/String; = "wzry_switch"

.field public static final TRACK_SUPPORT_WZRY_LEVEL_KEY:Ljava/lang/String; = "wzry_level"

.field public static final TRACK_SUPPORT_WZRY_TEXT_EFFECT_KEY:Ljava/lang/String; = "wzry_text_switch"

.field private static mCtx:Landroid/content/Context;

.field private static mOwlSysHelper:Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "enter_game"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "remind_ammo"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "enemy_bomb"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string/jumbo v2, "we_bomb"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "defuse_bomb_success"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_CODM_SCENES_VALUE:[Ljava/lang/String;

    .line 49
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "ys_start"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ys_loading"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ys_player_apply"

    aput-object v2, v1, v5

    sput-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_GENSHIN_SCENES_VALUE:[Ljava/lang/String;

    .line 52
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "cyhx_start"

    aput-object v2, v1, v3

    const-string v2, "cyhx_enemy_c4"

    aput-object v2, v1, v4

    const-string v2, "cyhx_our_c4"

    aput-object v2, v1, v5

    const-string v2, "cyhx_c4_boom"

    aput-object v2, v1, v6

    const-string v2, "cyhx_change_charge"

    aput-object v2, v1, v7

    sput-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_CF_SCENES_VALUE:[Ljava/lang/String;

    .line 55
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "resurrection"

    aput-object v2, v1, v3

    const-string v8, "eyes"

    aput-object v8, v1, v4

    const-string v8, "buy"

    aput-object v8, v1, v5

    sput-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_LOLM_SCENES_VALUE:[Ljava/lang/String;

    .line 58
    new-array v1, v7, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "buff"

    aput-object v2, v1, v4

    const-string v2, "dragon"

    aput-object v2, v1, v5

    const-string v2, "domination"

    aput-object v2, v1, v6

    sput-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_WZRY_SCENES_VALUE:[Ljava/lang/String;

    const/4 v1, 0x7

    .line 61
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "finals"

    aput-object v2, v1, v3

    const-string v2, "low_hp"

    aput-object v2, v1, v4

    const-string v2, "75_left"

    aput-object v2, v1, v5

    const-string v2, "50_left"

    aput-object v2, v1, v6

    const-string v2, "25_left"

    aput-object v2, v1, v7

    const-string v2, "10_left"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "poison"

    aput-object v2, v1, v0

    sput-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_HPJY_SCENES_VALUE:[Ljava/lang/String;

    .line 63
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "event"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "event_name"

    :goto_1
    sput-object v0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    const-string v1, "owner_name"

    if-nez v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "pkgName"

    goto :goto_3

    :cond_3
    :goto_2
    move-object v0, v1

    :goto_3
    sput-object v0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const-string v1, "package_name"

    :cond_5
    :goto_4
    sput-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->REPORT_PKG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 191
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getGlobalSettingsInt(Ljava/lang/String;I)I
    .locals 0

    .line 230
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;
    .locals 0

    .line 75
    sput-object p0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->mCtx:Landroid/content/Context;

    .line 76
    sget-object p0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->mOwlSysHelper:Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    if-nez p0, :cond_0

    .line 77
    new-instance p0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;-><init>()V

    sput-object p0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->mOwlSysHelper:Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    .line 79
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->mOwlSysHelper:Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    return-object p0
.end method

.method private getSecureSettingsInt(Ljava/lang/String;I)I
    .locals 0

    .line 234
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static insertOwlDayCv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->REPORT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "event_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string p1, "action_type"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string p1, "action_value"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p1, "report_interval"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public initOwlCv()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlRedmagicBroadcast(Ljava/util/List;Ljava/util/List;)V

    .line 94
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlRedmagicSupport(Ljava/util/List;)V

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlNubiaLoginCheck()V

    .line 96
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlMagicAlarmClock()V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    return-void
.end method

.method public insertOwlMagicAlarmClock()V
    .locals 3

    .line 197
    const-string v0, "magic_alarm_clock"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    .line 198
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_1

    const-string v0, "on"

    goto :goto_0

    :cond_1
    const-string v0, "off"

    :goto_0
    const-string v1, "Mora_clock_switch"

    const-string v2, "switch"

    invoke-static {p0, v1, v2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlDayCv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertOwlNubiaLoginCheck()V
    .locals 2

    .line 202
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper$1;-><init>(Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method

.method public insertOwlRedmagicBroadcast(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;>;)V"
        }
    .end annotation

    .line 137
    sget-object v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 139
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 141
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    .line 143
    new-instance v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;-><init>()V

    .line 144
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getGamePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setGamePackageName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getFunctionKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setCheckedSettingsKey(Ljava/lang/String;)V

    .line 146
    invoke-static {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setChecked(Z)V

    .line 147
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getScenes()[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v3

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 150
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 151
    aget-object v6, v3, v5

    .line 152
    new-instance v7, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-direct {v7}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;-><init>()V

    .line 153
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->getSenceKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setCheckedSettingsKey(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    invoke-virtual {v7, v8}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setChecked(Z)V

    .line 155
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    .line 163
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 164
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    .line 165
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getTrackFunction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "on"

    goto :goto_4

    :cond_4
    const-string v5, "off"

    :goto_4
    invoke-direct {p0, v3, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 169
    const-string v6, ""

    move v7, v1

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 170
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 171
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 172
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\u3001"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getScenes()[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->getTrackScene()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 178
    :cond_7
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getTrackScenes()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_8

    const-string v6, "none"

    :cond_8
    invoke-direct {p0, v3, v6}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 181
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_a

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cn.nubia.gamelauncher"

    const-string v0, "game_broadcast_switch"

    invoke-static {p2, v0, p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlDayCv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public insertOwlRedmagicSupport(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;",
            ">;)V"
        }
    .end annotation

    .line 101
    sget-object v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 104
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 105
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    .line 106
    new-instance v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;-><init>()V

    .line 107
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getGamePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGamePackageName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getFunctionKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameCheckedSettingsKey(Ljava/lang/String;)V

    .line 109
    invoke-static {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameChecked(Z)V

    .line 110
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getLevelKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setLevelLowSettingsKey(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getLevelLowSettingsKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setLevelLow(Z)V

    .line 112
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getTextEffectKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setShowTextSettingsKey(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getShowTextSettingsKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    invoke-virtual {v4, v6}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setShowText(Z)V

    .line 114
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getCustomFunctionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setCustomSettingsKey(Ljava/lang/String;)V

    .line 115
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 122
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getTrackFunction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isGameChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "on"

    goto :goto_4

    :cond_3
    const-string v5, "off"

    :goto_4
    invoke-direct {p0, v3, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getTrackLevel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isLevelLow()Z

    move-result v5

    const-string v6, "low"

    const-string v7, "high"

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    move-object v5, v7

    :goto_5
    invoke-direct {p0, v3, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getTrackTextEffect()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isShowText()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v6, v7

    :cond_5
    invoke-direct {p0, v3, v6}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 131
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_7

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cn.nubia.gamelauncher"

    const-string v1, "game_cheer_switch"

    invoke-static {v0, v1, p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlDayCv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public insertOwlTechCenter()V
    .locals 7

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    const-string v2, "mora_charging_switch"

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    const-string v2, "magic_power_charge"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "on"

    const-string v5, "off"

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    const-string v2, "mora_alert_switch"

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    const-string v2, "magic_alarm_clock"

    invoke-direct {p0, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const-string v2, "sense_wallpaper_switch"

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    invoke-direct {p0, v1, v5}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    const-string v2, "interaction_wallpaper_switch"

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    const-class v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_2

    :cond_2
    move-object v2, v5

    :goto_2
    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    const-string v2, "pet_wallpaper_switch"

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    const-class v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v5

    :goto_3
    invoke-direct {p0, v1, v4}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 225
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mora_techcenter_switch"

    invoke-static {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlDayCv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
