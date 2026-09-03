.class public Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;
.super Ljava/lang/Object;
.source "ModelStyleManager.java"


# static fields
.field private static volatile lastSkin:Ljava/lang/Integer; = null

.field private static volatile modleinitfinish:Z = false

.field private static skinIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final changeSkin(IZ)Z
    .locals 9

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->lastSkin:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->lastSkin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 116
    :cond_2
    sget-boolean v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->modleinitfinish:Z

    if-eqz v0, :cond_4

    .line 117
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->lastSkin:Ljava/lang/Integer;

    const/16 v2, 0x3fc

    if-nez v0, :cond_3

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->lastSkin:Ljava/lang/Integer;

    .line 120
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;-><init>()V

    .line 121
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setMsgID(I)V

    .line 122
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setSkinId(I)V

    .line 123
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    goto :goto_0

    .line 124
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->lastSkin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_4

    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->lastSkin:Ljava/lang/Integer;

    .line 127
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;-><init>()V

    .line 128
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setMsgID(I)V

    .line 129
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setSkinId(I)V

    .line 130
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->stopPlayMotion()V

    .line 134
    new-instance v0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 139
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->getInstance()Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->setProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;I)Z

    .line 140
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->CURRENT_SKIN:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_5
    return v1
.end method

.method public static final changeSkin(Z)Z
    .locals 3

    .line 102
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->getInstance()Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->getProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;)I

    move-result v0

    .line 103
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getDefaultSkinId()I

    move-result v0

    const/4 p0, 0x1

    .line 107
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(IZ)Z

    move-result p0

    return p0
.end method

.method public static final getCurrentSkin()I
    .locals 3

    .line 94
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->getInstance()Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->getProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;)I

    move-result v0

    .line 95
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getDefaultSkinId()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static final getDefaultSkinId()I
    .locals 2

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSupportedDigitalHuman()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d1

    return v0

    .line 86
    :cond_0
    const-string v0, "demi"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    return v0

    .line 90
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result v0

    return v0
.end method

.method public static final declared-synchronized getSkinIdList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSupportedDigitalHuman()Z

    move-result v2

    if-nez v2, :cond_4

    .line 38
    const-string v2, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    const-string v2, "demi"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_2
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;

    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getDefaultSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_3

    .line 67
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;

    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getDefaultSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_3
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    :cond_4
    :try_start_1
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_5
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->skinIdList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setModleinitfinish(Z)V
    .locals 0

    .line 146
    sput-boolean p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->modleinitfinish:Z

    return-void
.end method
