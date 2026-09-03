.class public Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;
.super Ljava/lang/Object;
.source "SkinOnlineDataManager.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "SkinOnlineDataManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setTotalPoint(I)V

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setSkins(Ljava/util/List;)V

    return-void
.end method

.method private checkCurrentSkinAvalid()V
    .locals 8

    .line 216
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v0

    .line 217
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->querySkins()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 218
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v4

    if-ne v4, v5, :cond_0

    move v3, v5

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current skin is avalid? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SkinOnlineDataManager"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    .line 225
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result v0

    invoke-static {v0, v5, v2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    .line 230
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getWallPaperSkin(Landroid/content/Context;)I

    move-result v0

    .line 231
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->querySkins()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v3, v2

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 232
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v7

    if-ne v7, v0, :cond_3

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v6

    if-ne v6, v5, :cond_3

    move v3, v5

    goto :goto_1

    .line 237
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    .line 239
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result p0

    invoke-static {p0, v5, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    :cond_5
    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;
    .locals 1

    .line 33
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->instance:Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->instance:Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    .line 36
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->instance:Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    return-object v0
.end method

.method private queryTotalSkins()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->getSkins()Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method private transform(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 209
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setTotalPoint(I)V

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalSkins()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public parseSkinResponse(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;
    .locals 7

    const/4 p0, 0x0

    if-eqz p1, :cond_6

    .line 142
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 143
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setId(I)V

    .line 145
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setSkinId(I)V

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Ignore "

    const-string v3, "SkinOnlineDataManager"

    if-nez v1, :cond_0

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bcs local skin not exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setDesc(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_item()Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->getThumbnail_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setThumbnailUrl(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setSkinType(I)V

    .line 155
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getRule_value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setAchievementPoint(I)V

    .line 156
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getRule_content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setActivityLink(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getRedeem_status()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    .line 159
    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setExchangeType(I)V

    .line 160
    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setReceiveState(I)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_rule()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 164
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getRule_value()I

    move-result p0

    if-gez p0, :cond_2

    .line 166
    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setExchangeType(I)V

    .line 167
    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setReceiveState(I)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getRule_value()I

    move-result p0

    if-nez p0, :cond_3

    .line 170
    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setExchangeType(I)V

    .line 171
    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setReceiveState(I)V

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v0, v6}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setExchangeType(I)V

    .line 175
    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setReceiveState(I)V

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->getSkin_rule()I

    move-result p1

    if-ne p1, v4, :cond_5

    .line 178
    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setExchangeType(I)V

    .line 179
    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setReceiveState(I)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    .line 182
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bcs unknown exchange type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-object p0
.end method

.method public parseSkinsResponse(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;
    .locals 6

    .line 106
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;-><init>()V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->getData()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    .line 109
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->getData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 110
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

    .line 111
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setTotalPoint(I)V

    .line 112
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->parseSkinResponse(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 114
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    .line 120
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_2
    new-instance p1, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager$1;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager$1;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setSkins(Ljava/util/List;)V

    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public queryReceivedSkinIdNames()[[Ljava/lang/String;
    .locals 8

    .line 80
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalSkins()Ljava/util/List;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    move v2, v1

    .line 82
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 83
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 84
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 85
    aget-object v5, v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 86
    aget-object v5, v0, v2

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 88
    aput-object v4, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public queryReceivedSkins()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->querySkins()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 72
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public querySkin(I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;
    .locals 2

    .line 59
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalSkins()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 60
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public querySkins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalSkins()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryTotalPoint()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->getTotalPoint()I

    move-result p0

    return p0
.end method

.method public updateSkins(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;)V
    .locals 2

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setTotalPoint(I)V

    .line 196
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalSkins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->getTotalPoint()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setTotalPoint(I)V

    .line 199
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalSkins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->getSkins()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalSkins()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->getSkins()Ljava/util/Vector;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->checkCurrentSkinAvalid()V

    return-void
.end method

.method public updateTotalPoint(I)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->skinOnlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setTotalPoint(I)V

    return-void
.end method
