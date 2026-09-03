.class public Lcn/nubia/redmagickyi/playmate/util/SupportedGames;
.super Ljava/lang/Object;
.source "SupportedGames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;,
        Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;
    }
.end annotation


# static fields
.field private static final RES_CODE_CF_BASE:I = 0x190

.field private static final RES_CODE_CODM_BASE:I = 0x258

.field private static final RES_CODE_GENSHIN_BASE:I = 0x1f4

.field private static final RES_CODE_KING_BASE:I = 0xc8

.field private static final RES_CODE_LOLM_BASE:I = 0x12c

.field private static final RES_CODE_PEACE_BASE:I = 0x64

.field public static aidGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;",
            ">;"
        }
    .end annotation
.end field

.field public static broadcastGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    .line 24
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->initCODM()V

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->initGENSHIN()V

    .line 26
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->initCF()V

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->initLOLM()V

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->initWZRY()V

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->initHPJY()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initCF()V
    .locals 8

    .line 114
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Broadcast;->isSupportCF()Z

    move-result v0

    const-string v1, "cyhxsy_switch"

    const-string v2, "com.tencent.tmgp.cf"

    if-eqz v0, :cond_2

    .line 115
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;-><init>()V

    .line 116
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_broadcast_game_cf:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    const-string v3, "com.tencent.tmgp.cf_redmagic_broadcast_plugin_enable"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "magic_elves_broadcast"

    goto :goto_0

    :cond_0
    const-string v3, "magic_elves_broadcast_cf"

    :goto_0
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    const-string v3, "cyhxsy_sitem"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$array;->redmagic_broadcast_game_cf_scene:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 123
    array-length v4, v3

    new-array v4, v4, [Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    const/4 v4, 0x0

    .line 124
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 125
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    new-instance v6, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;-><init>()V

    aput-object v6, v5, v4

    .line 126
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    aget-object v6, v3, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v6, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->MAGIC_ELVES_BROADCAST_CF:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit16 v7, v4, 0x191

    invoke-static {v5, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;I)I

    .line 129
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v7, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_CF_SCENES_VALUE:[Ljava/lang/String;

    aget-object v4, v7, v4

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$1002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    move v4, v6

    goto :goto_1

    .line 131
    :cond_1
    sget-object v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Aid;->isSupportCF()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;-><init>()V

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_game_cf:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    const-string v2, "com.tencent.tmgp.cf_help_plugin_enable"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v2

    const-string v3, "magic_elves_aid_cf"

    if-eqz v2, :cond_3

    const-string v2, "magic_elves_aid"

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    const-string v2, "magic_elves_aid_cf_level"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    const-string v2, "magic_elves_aid_cf_text_effect"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    const/16 v2, 0x190

    .line 144
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;I)I

    .line 145
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    const-string v1, "cyhxsy_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    const-string v1, "cyhxsy_text_switch"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    sget-object v1, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static initCODM()V
    .locals 8

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Broadcast;->isSupportCODM()Z

    move-result v0

    const-string v1, "codm_switch"

    const-string v2, "com.tencent.tmgp.cod"

    if-eqz v0, :cond_2

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;-><init>()V

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_broadcast_game_codm:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    const-string v3, "com.tencent.tmgp.cod_redmagic_broadcast_plugin_enable"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "magic_elves_broadcast"

    goto :goto_0

    :cond_0
    const-string v3, "magic_elves_broadcast_codm"

    :goto_0
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    const-string v3, "codm_sitem"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$array;->redmagic_broadcast_game_codm_scene:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 43
    array-length v4, v3

    new-array v4, v4, [Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    const/4 v4, 0x0

    .line 44
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 45
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    new-instance v6, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;-><init>()V

    aput-object v6, v5, v4

    .line 46
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    aget-object v6, v3, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v6, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->MAGIC_ELVES_BROADCAST_CODM:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit16 v7, v4, 0x259

    invoke-static {v5, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;I)I

    .line 49
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v7, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_CODM_SCENES_VALUE:[Ljava/lang/String;

    aget-object v4, v7, v4

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$1002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    move v4, v6

    goto :goto_1

    .line 51
    :cond_1
    sget-object v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Aid;->isSupportCODM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;-><init>()V

    .line 57
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_game_codm:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    const-string v2, "com.tencent.tmgp.cod_help_plugin_enable"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v2

    const-string v3, "magic_elves_aid_codm"

    if-eqz v2, :cond_3

    const-string v2, "magic_elves_aid"

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    const-string v2, "magic_elves_aid_codm_level"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    const-string v2, "magic_elves_aid_codm_text_effect"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    const/16 v2, 0x258

    .line 64
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;I)I

    .line 65
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    const-string v1, "codm_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    const-string v1, "codm_text_switch"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    sget-object v1, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static initGENSHIN()V
    .locals 8

    .line 74
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Broadcast;->isSupportGENSHIN()Z

    move-result v0

    const-string/jumbo v1, "ys_switch"

    const-string v2, "com.miHoYo.Yuanshen"

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;-><init>()V

    .line 76
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_broadcast_game_genshin:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v3, "com.miHoYo.Yuanshen_redmagic_broadcast_plugin_enable"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "magic_elves_broadcast"

    goto :goto_0

    :cond_0
    const-string v3, "magic_elves_broadcast_genshin"

    :goto_0
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    const-string/jumbo v3, "ys_sitem"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$array;->redmagic_broadcast_game_genshin_scene:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 83
    array-length v4, v3

    new-array v4, v4, [Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    const/4 v4, 0x0

    .line 84
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 85
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    new-instance v6, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;-><init>()V

    aput-object v6, v5, v4

    .line 86
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    aget-object v6, v3, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v6, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->MAGIC_ELVES_BROADCAST_GENSHIN:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit16 v7, v4, 0x1f5

    invoke-static {v5, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;I)I

    .line 89
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v7, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_GENSHIN_SCENES_VALUE:[Ljava/lang/String;

    aget-object v4, v7, v4

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$1002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    move v4, v6

    goto :goto_1

    .line 91
    :cond_1
    sget-object v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Aid;->isSupportGENSHIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;-><init>()V

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_game_genshin:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    const-string v2, "com.miHoYo.Yuanshen_help_plugin_enable"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v2

    const-string v3, "magic_elves_aid_genshin"

    if-eqz v2, :cond_3

    const-string v2, "magic_elves_aid"

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    const-string v2, "magic_elves_aid_genshin_level"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    const-string v2, "magic_elves_aid_genshin_text_effect"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    const/16 v2, 0x1f4

    .line 104
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;I)I

    .line 105
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "ys_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "ys_text_switch"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    sget-object v1, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static initHPJY()V
    .locals 8

    .line 248
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;-><init>()V

    .line 249
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->redmagic_broadcast_game_peace:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    const-string v2, "com.tencent.tmgp.pubgmhd_redmagic_broadcast_plugin_enable"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "magic_elves_broadcast"

    goto :goto_0

    :cond_0
    const-string v2, "magic_elves_broadcast_peace"

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    const-string v2, "hpjy_switch"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    const-string v3, "hpjy_sitem"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$array;->redmagic_broadcast_game_peace_scene:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 256
    array-length v4, v3

    new-array v4, v4, [Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    const/4 v4, 0x0

    .line 257
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 258
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    new-instance v6, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;-><init>()V

    aput-object v6, v5, v4

    .line 259
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    aget-object v6, v3, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v6, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->MAGIC_ELVES_BROADCAST_PEACE:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x65

    invoke-static {v5, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;I)I

    .line 262
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v5

    aget-object v5, v5, v4

    sget-object v7, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_HPJY_SCENES_VALUE:[Ljava/lang/String;

    aget-object v4, v7, v4

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$1002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    move v4, v6

    goto :goto_1

    .line 264
    :cond_1
    sget-object v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;-><init>()V

    .line 268
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_game_peace:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    const-string v1, "com.tencent.tmgp.pubgmhd_help_plugin_enable"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v1

    const-string v3, "magic_elves_aid_peace"

    if-eqz v1, :cond_2

    const-string v1, "magic_elves_aid"

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    const-string v1, "magic_elves_aid_peace_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    const-string v1, "magic_elves_aid_peace_text_effect"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x64

    .line 275
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;I)I

    .line 276
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v1, "hpjy_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    const-string v1, "hpjy_text_switch"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    sget-object v1, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static initLOLM()V
    .locals 9

    .line 154
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Broadcast;->isSupportLOLM()Z

    move-result v0

    const-string v1, "lol_switch"

    const-string v2, "com.tencent.lolm"

    if-eqz v0, :cond_3

    .line 155
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;-><init>()V

    .line 156
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_broadcast_game_lolm:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    const-string v3, "com.tencent.lolm_redmagic_broadcast_plugin_enable"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "magic_elves_broadcast"

    goto :goto_0

    :cond_0
    const-string v3, "magic_elves_broadcast_lolm"

    :goto_0
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    const-string v3, "lol_sitem"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$array;->redmagic_broadcast_game_lolm_scene:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 163
    array-length v4, v3

    new-array v4, v4, [Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    const/4 v4, 0x0

    move v5, v4

    .line 164
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 165
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    new-instance v7, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-direct {v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;-><init>()V

    aput-object v7, v6, v5

    .line 166
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    sget-object v7, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->MAGIC_ELVES_BROADCAST_LOLM:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    add-int/lit8 v7, v5, 0x1

    add-int/lit16 v8, v5, 0x12d

    invoke-static {v6, v8}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;I)I

    .line 169
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$800(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "magic_elves_broadcast_lolm_count_down"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 174
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$2202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Z)Z

    goto :goto_2

    .line 171
    :cond_1
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$2202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Z)Z

    .line 177
    :goto_2
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    sget-object v8, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_LOLM_SCENES_VALUE:[Ljava/lang/String;

    aget-object v5, v8, v5

    invoke-static {v6, v5}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$1002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    move v5, v7

    goto :goto_1

    .line 179
    :cond_2
    sget-object v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Aid;->isSupportLOLM()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;-><init>()V

    .line 185
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_game_lolm:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    const-string v2, "com.tencent.lolm_help_plugin_enable"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v2

    const-string v3, "magic_elves_aid_lolm"

    if-eqz v2, :cond_4

    const-string v2, "magic_elves_aid"

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    const-string v2, "magic_elves_aid_lolm_level"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    const-string v2, "magic_elves_aid_lolm_text_effect"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    const/16 v2, 0x12c

    .line 192
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;I)I

    .line 193
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    const-string v1, "lol_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    const-string v1, "lol_text_switch"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    sget-object v1, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private static initWZRY()V
    .locals 11

    .line 202
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;-><init>()V

    .line 203
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->redmagic_broadcast_game_king:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    const-string v1, "com.tencent.tmgp.sgame"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    const-string v2, "com.tencent.tmgp.sgame_redmagic_broadcast_plugin_enable"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "magic_elves_broadcast"

    goto :goto_0

    :cond_0
    const-string v2, "magic_elves_broadcast_king"

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    const-string/jumbo v2, "wzry_switch"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    const-string/jumbo v3, "wzry_sitem"

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$array;->redmagic_broadcast_game_king_scene:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 210
    array-length v4, v3

    new-array v4, v4, [Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    const/4 v4, 0x0

    move v5, v4

    .line 211
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 212
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    new-instance v7, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    invoke-direct {v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;-><init>()V

    aput-object v7, v6, v5

    .line 213
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    sget-object v7, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->MAGIC_ELVES_BROADCAST_KING:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    add-int/lit8 v7, v5, 0x1

    add-int/lit16 v8, v5, 0xc9

    invoke-static {v6, v8}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;I)I

    .line 216
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$800(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "magic_elves_broadcast_king_primer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x2

    goto :goto_2

    :sswitch_1
    const-string v8, "magic_elves_broadcast_king_dragon"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move v10, v9

    goto :goto_2

    :sswitch_2
    const-string v8, "magic_elves_broadcast_count_down"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 223
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6, v9}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$2202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Z)Z

    goto :goto_3

    .line 220
    :pswitch_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6, v4}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$2202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Z)Z

    .line 226
    :goto_3
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v6

    aget-object v6, v6, v5

    sget-object v8, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->TRACK_BROADCAST_WZRY_SCENES_VALUE:[Ljava/lang/String;

    aget-object v5, v8, v5

    invoke-static {v6, v5}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->access$1002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;

    move v5, v7

    goto/16 :goto_1

    .line 228
    :cond_4
    sget-object v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;-><init>()V

    .line 232
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_game_king:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    const-string v1, "com.tencent.tmgp.sgame_help_plugin_enable"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v1

    const-string v3, "magic_elves_aid_king"

    if-eqz v1, :cond_5

    const-string v1, "magic_elves_aid"

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    const-string v1, "magic_elves_aid_king_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    const-string v1, "magic_elves_aid_king_text_effect"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0xc8

    .line 239
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;I)I

    .line 240
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$1902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    const-string/jumbo v1, "wzry_level"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    const-string/jumbo v1, "wzry_text_switch"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->access$2102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    sget-object v1, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e0b94bc -> :sswitch_2
        0x4762b889 -> :sswitch_1
        0x5be09849 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
