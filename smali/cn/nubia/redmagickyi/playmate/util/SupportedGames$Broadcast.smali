.class public Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;
.super Ljava/lang/Object;
.source "SupportedGames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/util/SupportedGames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Broadcast"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;
    }
.end annotation


# instance fields
.field private functionKey:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private gamePackageName:Ljava/lang/String;

.field private pluginKey:Ljava/lang/String;

.field private scenes:[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

.field private trackFunction:Ljava/lang/String;

.field private trackScenes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->gameName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->gamePackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->pluginKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->functionKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->trackFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->trackScenes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;
    .locals 0

    .line 283
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->scenes:[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;)[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->scenes:[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    return-object p1
.end method


# virtual methods
.method public getFunctionKey()Ljava/lang/String;
    .locals 0

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->functionKey:Ljava/lang/String;

    return-object p0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 0

    .line 294
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->gameName:Ljava/lang/String;

    return-object p0
.end method

.method public getGamePackageName()Ljava/lang/String;
    .locals 0

    .line 298
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->gamePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPluginKey()Ljava/lang/String;
    .locals 0

    .line 302
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->pluginKey:Ljava/lang/String;

    return-object p0
.end method

.method public getScenes()[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;
    .locals 0

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->scenes:[Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast$Scene;

    return-object p0
.end method

.method public getTrackFunction()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->trackFunction:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackScenes()Ljava/lang/String;
    .locals 0

    .line 318
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Broadcast;->trackScenes:Ljava/lang/String;

    return-object p0
.end method
