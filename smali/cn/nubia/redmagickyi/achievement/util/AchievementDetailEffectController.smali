.class public Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;
.super Ljava/lang/Object;
.source "AchievementDetailEffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;,
        Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;,
        Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_ANIM_COMPLETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AchievementDetailEffectController"

.field private static controller:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;


# instance fields
.field private callback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

.field private context:Landroid/content/Context;

.field private drawHandler:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

.field private drawHandlerThread:Landroid/os/HandlerThread;

.field private holderCallback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;

.field private surfaceView:Landroid/view/SurfaceView;

.field private trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->callback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandler:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Landroid/view/SurfaceView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    return-object p0
.end method

.method private addCommonTracks()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->release()V

    .line 110
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    const/16 v0, 0x8

    new-array v0, v0, [Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/BackgroundTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/BackgroundTrack;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/CircleFlashTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/CircleFlashTrack;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/BurstTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/BurstTrack;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/CelectricitylTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/CelectricitylTrack;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/ParticlesTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/ParticlesTrack;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoTitleTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoTitleTrack;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->addTracks([Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;)V

    :cond_1
    return-void
.end method

.method private addSpecificTracks(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
    .locals 10

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    if-eqz v0, :cond_7

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->restore()V

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementCompletedDetail()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementUndoneDetail()Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v2

    const-string v3, ""

    if-lez v2, :cond_2

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->context:Landroid/content/Context;

    sget v5, Lcn/nubia/redmagickyi/main/R$string;->achievement_name_level:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 129
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    .line 130
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v4

    if-le v4, v5, :cond_4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementType()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 132
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->achievement_detail_scene_one_detail:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressNow()I

    move-result v7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v1, v6, v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementPoint()I

    move-result v4

    if-lez v4, :cond_5

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->achievement_detail_scene_two_detail_point:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementPoint()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 142
    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->achievement_detail_scene_two_detail_icon:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 145
    iget-object v6, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    const-class v7, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->findTrack(Ljava/lang/Class;)Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->setActived(Z)V

    .line 149
    :cond_6
    iget-object v6, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    const/4 v7, 0x6

    new-array v7, v7, [Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;

    new-instance v8, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;

    invoke-direct {v8, p0, p1, v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$2;

    invoke-direct {v8, p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$2;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    aput-object v8, v7, v5

    new-instance p1, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$3;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$3;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object p1, v7, v0

    new-instance p1, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$4;

    invoke-direct {p1, p0, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$4;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-object p1, v7, v0

    new-instance p1, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$5;

    invoke-direct {p1, p0, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$5;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-object p1, v7, v0

    new-instance p1, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;

    invoke-direct {p1, p0, v4, v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$6;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x5

    aput-object p1, v7, p0

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->addTracks([Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;)V

    :cond_7
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;
    .locals 1

    .line 63
    sget-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->controller:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->controller:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    .line 66
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->controller:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    return-object p0
.end method

.method private initThread()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrawHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandlerThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    :cond_1
    return-void
.end method

.method private initView(Landroid/view/ViewGroup;)V
    .locals 5

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->holderCallback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 202
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    .line 204
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    .line 205
    new-instance v2, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$7;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$7;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v3, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;

    invoke-direct {v3, p0, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;)V

    iput-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->holderCallback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, -0x1

    if-ne v0, v2, :cond_1

    .line 218
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 219
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    aget v4, v0, v2

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    aget v1, v0, v2

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-int/2addr v1, v0

    neg-int v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 222
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 0

    .line 59
    sget-object p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    const/16 v1, 0x76

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->release()V

    .line 82
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->addCommonTracks()V

    :cond_0
    return-void
.end method

.method public performSpecificResource(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->addSpecificTracks(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    .line 92
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->initThread()V

    return-void
.end method

.method public play(Landroid/view/ViewGroup;Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;)V
    .locals 2

    .line 231
    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->callback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandler:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandler:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    .line 237
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->initView(Landroid/view/ViewGroup;)V

    if-eqz p2, :cond_1

    .line 239
    invoke-interface {p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;->onPlayBegin()V

    .line 241
    :cond_1
    const-string p1, "bitmap perform play"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitmap perform release "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    .line 271
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->callback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    .line 275
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandler:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 278
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    if-eqz p0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitmap perform stop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->callback:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    .line 255
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->drawHandler:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 256
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->trackManager:Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;

    if-eqz p0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
