.class public Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;
.super Ljava/lang/Object;
.source "FragmentCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;,
        Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;

.field private fragmentCreators:[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

.field private isLogin:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mainpage_tab_wallpaperhub:I

    const-string v3, "homepage_wallpaper"

    const-class v4, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;-><init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;ILjava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mainpage_tab_dancestudio:I

    const-string v3, "homepage_tv"

    const-class v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;-><init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;ILjava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mainpage_tab_profile:I

    const-string v3, "homepage_story"

    const-class v4, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;-><init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;ILjava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->fragmentCreators:[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->callback:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Ljava/lang/Boolean;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->isLogin:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->isLogin:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->callback:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->fragmentCreators:[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    return-object p0
.end method

.method public static release()V
    .locals 0

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->release()V

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->release()V

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->release()V

    return-void
.end method


# virtual methods
.method public getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->fragmentCreators:[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    return-object p0
.end method
