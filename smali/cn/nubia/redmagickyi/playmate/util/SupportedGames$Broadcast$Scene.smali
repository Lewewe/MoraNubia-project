.class public Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;
.super Ljava/lang/Object;
.source "SupportedGames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scene"
.end annotation


# instance fields
.field private isHaveVoice:Z

.field private resCode:I

.field private sceneName:Ljava/lang/String;

.field private senceKey:Ljava/lang/String;

.field private trackScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->isHaveVoice:Z

    return-void
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 321
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->trackScene:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Z)Z
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->isHaveVoice:Z

    return p1
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 321
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->sceneName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)Ljava/lang/String;
    .locals 0

    .line 321
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->senceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 321
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->senceKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;I)I
    .locals 0

    .line 321
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->resCode:I

    return p1
.end method


# virtual methods
.method public getResCode()I
    .locals 0

    .line 338
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->resCode:I

    return p0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 0

    .line 330
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->sceneName:Ljava/lang/String;

    return-object p0
.end method

.method public getSenceKey()Ljava/lang/String;
    .locals 0

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->senceKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackScene()Ljava/lang/String;
    .locals 0

    .line 346
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->trackScene:Ljava/lang/String;

    return-object p0
.end method

.method public isHaveVoice()Z
    .locals 0

    .line 342
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;->isHaveVoice:Z

    return p0
.end method
