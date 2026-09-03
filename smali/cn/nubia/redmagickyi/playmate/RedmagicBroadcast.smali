.class public Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "RedmagicBroadcast.java"

# interfaces
.implements Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;
.implements Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;
.implements Lcn/nubia/redmagickyi/util/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;,
        Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;
    }
.end annotation


# static fields
.field private static final MSG_GET_CURRENT_POSITION:I = 0x2

.field private static final MSG_PLAY_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RedmagicBroadcast"


# instance fields
.field private broadcastChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;

.field private gameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

.field private lastGamePosition:I

.field private lastScenePosition:I

.field private onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

.field private recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

.field private recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

.field private redmagicBroadcastGameAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

.field private redmagicBroadcastSceneAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

.field private rootView:Landroid/view/View;

.field private savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

.field private sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastSceneAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;Ljava/lang/String;I)I
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getGlobalSettingsInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastGameAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;Ljava/lang/String;I)I
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getGlobalSettingsInt(Ljava/lang/String;I)I
    .locals 0

    .line 408
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSecureSettingsInt(Ljava/lang/String;I)I
    .locals 0

    .line 400
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initData()V
    .locals 10

    .line 124
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    .line 127
    sget-object v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->broadcastGames:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 128
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;

    .line 130
    new-instance v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;-><init>()V

    .line 131
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setGame(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getGamePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setGamePackageName(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getPluginKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setPluginEnableSettingsKey(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getPluginEnableSettingsKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getGlobalSettingsInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setPluginEnable(Z)V

    .line 135
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getFunctionKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setCheckedSettingsKey(Ljava/lang/String;)V

    .line 136
    invoke-static {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setChecked(Z)V

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "[init game params] "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "RedmagicBroadcast"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v5, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->getScenes()[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    move-result-object v3

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 141
    :goto_2
    array-length v7, v3

    if-ge v5, v7, :cond_2

    .line 142
    aget-object v7, v3, v5

    .line 143
    new-instance v8, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-direct {v8}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;-><init>()V

    .line 144
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->getSceneName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setText(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->getSenceKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setCheckedSettingsKey(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_1

    move v9, v6

    goto :goto_3

    :cond_1
    move v9, v1

    :goto_3
    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setChecked(Z)V

    .line 147
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->getResCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setResCode(I)V

    .line 148
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->isHaveVoice()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setHaveVoice(Z)V

    .line 149
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 151
    :cond_2
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private putGlobalSettingsInt(Ljava/lang/String;I)V
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private putSecureSettingsInt(Ljava/lang/String;I)V
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private registContentObserver()V
    .locals 4

    .line 495
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->broadcastChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;

    .line 496
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->broadcastChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 497
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->broadcastChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregistContentObserver()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->broadcastChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->broadcastChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 106
    instance-of v0, p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 91
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->BottomIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 98
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->BottomOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 99
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 73
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 65
    const-string p1, "key_saved_states"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    .line 66
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getBroadcastArgs()[I

    move-result-object p1

    if-nez p1, :cond_0

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->setBroadcastArgs([I)V

    :cond_0
    return-void
.end method

.method public initAdapter()V
    .locals 13

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getGameY()I

    move-result v0

    .line 158
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getGamePosition()I

    move-result v1

    .line 159
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getBroadcastArgs()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 160
    iget-object v4, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getBroadcastArgs()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 162
    iget-object v6, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    move v1, v3

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v0

    .line 166
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setFocused(Z)V

    .line 169
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_1

    move v10, v3

    move v12, v10

    goto :goto_1

    :cond_1
    move v10, v2

    move v12, v4

    .line 173
    :goto_1
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setFocused(Z)V

    .line 174
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setProgress(I)V

    .line 176
    new-instance v0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastGameAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    .line 177
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->setRedmagicBroadcastGameItemOnclick(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$1;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastGameAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    new-instance v0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastSceneAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    .line 186
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->setRedmagicBroadcastSceneItemOnclick(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;)V

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$2;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 193
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastSceneAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;IILjava/util/List;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 112
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycle_view_game:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 115
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 117
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycle_view_scene:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public isPausePlaying()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBroadcastGameCheckboxTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 368
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    .line 369
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isPluginEnable()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 370
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 371
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->redmagic_broadcast_plugin_disable:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_0
    return p3

    :cond_1
    return p2
.end method

.method public onBroadcastGameCheckedChanged(Landroid/view/View;IZ)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    .line 357
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setChecked(Z)V

    .line 358
    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setCheckedToStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;)V

    return-void
.end method

.method public onBroadcastGameClick(Landroid/view/View;IZ)V
    .locals 1

    .line 291
    new-instance p1, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p1, p3, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastSceneAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    .line 292
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->setRedmagicBroadcastSceneItemOnclick(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;)V

    .line 293
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastSceneAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 294
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 295
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$4;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$4;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBroadcastSceneCheckboxTouch(Landroid/view/View;Ljava/util/List;ILandroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;I",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 p3, 0x0

    move v0, p3

    .line 381
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 382
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-ne v1, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 389
    invoke-virtual {p0, p1, v0, p4}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onBroadcastGameCheckboxTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    return p3
.end method

.method public onBroadcastSceneCheckedChanged(Landroid/view/View;Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;IZ)V"
        }
    .end annotation

    .line 363
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->putSecureSettingsInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onBroadcastSceneClick(Landroid/view/View;Ljava/util/List;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;IZ)V"
        }
    .end annotation

    .line 309
    iput p3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->lastScenePosition:I

    .line 310
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    if-eqz p1, :cond_0

    const/4 p4, 0x0

    .line 311
    invoke-virtual {p1, p4}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    const/4 p4, -0x1

    move v0, p1

    .line 314
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 315
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-ne v1, p2, :cond_1

    .line 317
    iput v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->lastGamePosition:I

    move p4, v0

    goto :goto_2

    .line 319
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 320
    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setFocused(Z)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_3
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 327
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    invoke-static {p2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->access$200(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-wide/16 v0, 0x7d

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    .line 328
    :goto_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v2, 0x1

    .line 329
    iput v2, p2, Landroid/os/Message;->what:I

    .line 330
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isHaveVoice()Z

    move-result v2

    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 331
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getResCode()I

    move-result v2

    iput v2, p2, Landroid/os/Message;->arg2:I

    .line 332
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    invoke-virtual {v2, p2, v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v2, 0x2

    .line 336
    iput v2, p2, Landroid/os/Message;->what:I

    .line 337
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 338
    iget-object p3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    invoke-virtual {p0, p2, v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onBroadcastSceneRepeatClick(Landroid/view/View;Ljava/util/List;IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;IZ)Z"
        }
    .end annotation

    .line 344
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isPlaying()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 345
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->pause()Z

    return p2

    .line 347
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 348
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->resume()Z

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 80
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_remagic_broadcasts:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->rootView:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->initData()V

    .line 82
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->initView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->initAdapter()V

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->registContentObserver()V

    .line 85
    const-string p1, "RedmagicBroadcast"

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 273
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onDestroy()V

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->unregistContentObserver()V

    return-void
.end method

.method public onGainFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onHideFragment()V
    .locals 6

    .line 209
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    .line 210
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 213
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 214
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    .line 217
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 218
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 226
    :goto_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->setGameY(I)V

    .line 227
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->setGamePosition(I)V

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->recyclerViewScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->setBroadcastArgs([I)V

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->saveState(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)V

    :cond_4
    return-void
.end method

.method public onLossFocus()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->pause()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLossFocusTransient()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->pause()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onPause()V

    .line 266
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 267
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 235
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 237
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->removeMessages(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    move-object v4, v2

    .line 241
    :goto_0
    iget-object v5, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, -0x1

    if-ge v3, v5, :cond_2

    .line 242
    iget-object v4, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    .line 243
    iget-object v5, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->gameList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    iget-object v5, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 245
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 246
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 247
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 256
    iput v1, v0, Landroid/os/Message;->what:I

    .line 257
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 258
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$PlayHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public performReplay()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    iget v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->lastGamePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 282
    iget v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->lastScenePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setProgress(I)V

    .line 283
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->redmagicBroadcastSceneAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->notifyDataSetChanged()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->sceneList:Ljava/util/List;

    iget v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->lastGamePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->lastScenePosition:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onBroadcastSceneClick(Landroid/view/View;Ljava/util/List;IZ)V

    return-void
.end method
